#include "hier_tree.hpp"

// temporary bool for printing out tons of debug information
constexpr bool dbg_verbose = false;

std::pair<int, int> Hier_tree::min_wire_cut(Graph_info& info, int cut_set) {
  
  auto& g = info.al;
  set_map_t& smap = info.sets;
  
  auto not_in_cut_set = [&](auto v) -> bool {
    return smap(v) != cut_set;
  };
  
  auto cut_verts = g.verts() | ranges::view::remove_if(not_in_cut_set);

  // TODO: graph lib needs a specific version of range-v3, and that version doesn't have size or conversion utilities yet.
  // this method isn't pretty, but it works.  [[maybe_unused]] directive silences warning about "v" being unused.
  unsigned int graph_size = 0;
  for ([[maybe_unused]] auto v : cut_verts) {
    graph_size++;
  }
  
  I(graph_size >= 2);
  
  // counter to generate unique set names
  auto new_sets = std::pair(set_number, set_number + 1);
  
  // if there are only two elements in the graph, we can exit early.
  if (graph_size == 2) {
    int which_vert = 0;
    vertex_t v1, v2;
    for (auto v : cut_verts) {
      if (which_vert == 0) {
        v1 = v;
        which_vert++;
      } else {
        v2 = v;
      }
    }

    smap[v1] = new_sets.first;
    smap[v2] = new_sets.second;
    
    if (dbg_verbose) {
      std::cout << "trivial partition:" << std::endl;
      
      std::cout << info.names(v1) << ":\t";
      std::cout << "a (aka " << new_sets.first << ")" << std::endl;

      std::cout << info.names(v2) << ":\t";
      std::cout << "b (aka " << new_sets.second << ")" << std::endl;
    }

    set_number += 2;
    return new_sets;
  }
  
  // if there are an odd number of elements, we need to insert one to make the graph size even.
  vertex_t temp_vertex = g.null_vert();
  if (graph_size % 2 == 1) {
    temp_vertex = g.insert_vert();
    info.names[temp_vertex] = "temp";
    info.areas[temp_vertex] = 0.0f;
    
    for (auto other_v : g.verts()) {
      edge_t temp_edge_t = g.insert_edge(temp_vertex, other_v);
      info.weights[temp_edge_t] = 0;

      temp_edge_t = g.insert_edge(other_v, temp_vertex);
      info.weights[temp_edge_t] = 0;
    }
    
    smap[temp_vertex] = cut_set;
    graph_size++;
  }

  // make new set numbers
  unsigned int set_inc = 0;
  for (vertex_t v : cut_verts) {
    smap[v] = set_number + set_inc;
    
    if (set_inc == 1) {
      set_inc = 0;
    } else {
      set_inc = 1;
    }
  }

  set_number += 2;

  /* 
    The reason why I made vert_set a new variable is because views carry no state of their own,
    so the view recomputes what should be contained in it every time we access the view.
    
    In this case, after we adjust the smap values, the original view decides that nothing should
    be in the cut_verts view anymore and removes everything.

    To resolve this, a new view should be created with the correct condition.
  */

  auto is_valid_set = [&, new_sets](auto v) -> bool {
    return smap(v) == new_sets.first || smap(v) == new_sets.second;
  };

  auto vert_set = g.verts() | ranges::view::remove_if([=](auto v) { return !is_valid_set(v); });

  const unsigned int set_size = graph_size / 2;

  auto is_in_a = [&, new_sets](auto v) -> bool {
    return smap(v) == new_sets.first;
  };

  auto is_in_b = [&, new_sets](auto v) -> bool {
    return smap(v) == new_sets.second;
  };

  auto same_set = [&](auto v1, auto v2) -> bool {
    I(is_valid_set(v1));
    I(is_valid_set(v2));
    return smap(v1) == smap(v2);
  };

  auto cmap = g.vert_map<Min_cut_data>();
  
  // track the best possible decrease in cost between the two sets, so that we can return when there is no more work to do
  int best_decrease = 0;

  do {
    // (re)calculate delta costs for each node
    for (auto v : vert_set) {
      int exter = 0;
      int inter = 0;
      for (auto e : g.out_edges(v)) {
        vertex_t other_v = g.head(e);
        if (is_valid_set(other_v)) {
          if (!same_set(v, other_v)) {
            exter += info.weights(e);
          } else {
            inter += info.weights(e);
          }
        }
      }
      cmap[v].d_cost = exter - inter;
      cmap[v].active = true;
    }
    
    std::vector<vertex_t> av, bv;
    std::vector<int> cv;

    // remove the node pair with the highest global reduction in cost, and add it to cv.
    // also add the nodes used in the reduction to av and bv, respectively.
    for (unsigned int n = 1; n <= set_size; n++) {
      
      int cost = std::numeric_limits<int>::min();

      auto a_max = g.null_vert();
      auto b_max = g.null_vert();
      
      for (auto v : vert_set) {
        if (cmap(v).active) {
          // row is in the "a" set and hasn't been deleted
          for (auto e : g.out_edges(v)) {
            vertex_t other_v = g.head(e);
            if (is_in_a(v) && is_in_b(other_v) && cmap(other_v).active) {
              // only select nodes in the other set
              int new_cost = cmap(v).d_cost + cmap(other_v).d_cost - 2 * info.weights(e);
              if (new_cost > cost) {
                cost = new_cost;
                a_max = v;
                b_max = other_v;
              }
            }
          }
        }
      }
      
      I(cost != std::numeric_limits<int>::min()); // there should always be some kind of min cost
      I(a_max != g.null_vert()); // these should be written with legal indices
      I(b_max != g.null_vert());
      
      // save the best swap and mark the swapped nodes as unavailable for future potential swaps
      cv.push_back(cost);
      
      av.push_back(a_max);
      bv.push_back(b_max);

      cmap[a_max].active = false;
      cmap[b_max].active = false;
      
      auto find_edge_to_max = [&](auto v, auto v_max) -> edge_t {
        if (cmap[v].active) {
          for (auto e : g.out_edges(v)) {
            vertex_t other_v = g.head(e);
            if (other_v == v_max) { // no checking if other_v is active since the maxes were just deactivated
              return e;
            }
          }
        }
        return g.null_edge();
      };

      // recalculate costs considering a_max and b_max swapped
      for (auto v : vert_set) {
        if (is_in_a(v)) {
          cmap[v].d_cost = cmap(v).d_cost + 2 * info.weights(find_edge_to_max(v, a_max)) - 2 * info.weights(find_edge_to_max(v, b_max));
        } else {
          cmap[v].d_cost = cmap(v).d_cost + 2 * info.weights(find_edge_to_max(v, b_max)) - 2 * info.weights(find_edge_to_max(v, a_max));
        }
      }
    }
    
    // there should be set_size swaps possible
    I(cv.size() == set_size);

    auto check_sum = [&]() -> bool {
      int total = 0;
      for (const unsigned int c : cv) {
        total += c;
      }
      return total == 0;
    };

    // applying all swaps (aka swapping the sets) should have no effect
    I(check_sum());
    
    // calculate the maximum benefit reduction out of all reductions possible in this iteration
    best_decrease = 0;
    size_t decrease_index = 0;
    
    for (size_t k = 0; k < cv.size(); k++) {
      int trial_decrease = 0;
      for (size_t i = 0; i < k; i++) {
        trial_decrease += cv[i];
      }
      if (trial_decrease > best_decrease) {
        best_decrease = trial_decrease;
        decrease_index = k;
      }
    }
    
    // if the maximum reduction has a higher external cost than internal cost, there's something we can do.
    if (best_decrease > 0) {
      for (size_t i = 0; i < decrease_index; i++) {
        if (dbg_verbose) {
          std::cout << "swapping " << info.names(av[i]) << " with " << info.names(bv[i]) << std::endl;
        }
        std::swap(smap[av[i]], smap[bv[i]]);
      }
    }

    for (auto v : vert_set) {
      cmap[v].active = true;
    }

    // use the better sets as inputs to the algorithm, and run another iteration if there looks to be a better decrease
  } while (best_decrease > 0);

  if (dbg_verbose) {
    std::cout << std::endl;
    std::cout << "best partition:" << std::endl;
    for (auto v : vert_set) {
      std::cout << info.names(v) << ":\t";
      std::cout << (is_in_a(v) ? "a" : "b") << " (aka " << (is_in_a(v) ? new_sets.first : new_sets.second);
      std::cout << "), cost " << cmap(v).d_cost << std::endl;
    }
  }
  
  if (temp_vertex != g.null_vert()) {
    g.erase_vert(temp_vertex);
  }
  
  return new_sets;
}

phier Hier_tree::make_hier_tree(phier t1, phier t2) {

  auto pnode = std::make_shared<Hier_node>();
  pnode->name = "node_" + std::to_string(node_number);
  
  pnode->children[0] = t1;
  t1->parent = pnode;

  pnode->children[1] = t2;
  t2->parent = pnode;

  node_number++;

  return pnode;
}

phier Hier_tree::make_hier_node(const int set) {
  I(set >= 0);

  phier pnode = std::make_shared<Hier_node>();
  pnode->name = "leaf_node_" + std::to_string(node_number);
  
  auto set_areas = ginfo.al.verts()
                  | ranges::view::remove_if([this, set](auto v) { return this->ginfo.sets(v) != set; })
                  | ranges::view::transform([this](auto v) { return this->ginfo.areas(v); });
  
  for (const double a : set_areas) {
    pnode->area += a;
  }
  
  pnode->graph_subset = set;

  node_number++;
  
  return pnode;
}

phier Hier_tree::discover_hierarchy(Graph_info& info, int start_set, unsigned int num_components) {
  
  // figure out the number of verts in the set
  unsigned int set_size = 0;
  for (auto v : info.al.verts()) {
    if (info.sets(v) == start_set) {
      set_size++;
    }
  }
  
  if (set_size <= num_components) {
    // set contains less than the minimum number of components, so treat it as a leaf node
    return make_hier_node(start_set);
  }
  
  auto [a, b] = min_wire_cut(info, start_set);

  phier t1 = discover_hierarchy(info, a, num_components);
  phier t2 = discover_hierarchy(info, b, num_components);
  
  return make_hier_tree(t1, t2);
}

Hier_tree::Hier_tree(Graph_info&& json_info, unsigned int num_components)
  : ginfo(std::move(json_info)) {
  
  I(num_components >= 1);
  
  root = discover_hierarchy(ginfo, 0, num_components);
}

void Hier_tree::print_node(const phier& node) const {
  if (node->parent == nullptr) {
    std::cout << "root node ";
  }

  std::cout << node->name << ": area = " << node->area;
  
  if (node->is_leaf()) {
    std::cout << ", containing set " << node->graph_subset << std::endl;
  } else {
    std::cout << ", children = (" << node->children[0]->name << ", " << node->children[1]->name << ")" << std::endl;
    print_node(node->children[0]);
    print_node(node->children[1]);
  }
}

void Hier_tree::print() const {
  print_node(root);
  std::cout << std::endl;
  
  for (size_t i = 0; i < collapsed_hiers.size(); i++) {
    std::cout << "printing collapsed hierarchy " << i << ":" << std::endl;
    print_node(collapsed_hiers[i]);
  }
}

phier Hier_tree::collapse(phier node, double threshold_area) {
  
  // add up the total area of all the leaves in the subtree
  std::function<double(phier)> find_area = [&](phier node) -> double {
    if (node->is_leaf()) {
      return node->area;
    }

    return find_area(node->children[0]) + find_area(node->children[1]);
  };
  
  if (find_area(node) >= threshold_area) {
    if (!node->is_leaf()) {
      auto n1 = collapse(node->children[0], threshold_area);
      auto n2 = collapse(node->children[1], threshold_area);
      
      return make_hier_tree(n1, n2);
    }
    
    return make_hier_node(node->graph_subset);
  }
  
  // create a new subtree from an existing subtree
  std::function<phier(phier)> copy_subtree = [&, this](phier node) -> phier {
    if (node->is_leaf()) {
      return make_hier_node(node->graph_subset);
    }
    
    auto n1 = copy_subtree(node->children[0]);
    auto n2 = copy_subtree(node->children[1]);
    
    return make_hier_tree(n1, n2);
  };
  
  // make all nodes belong to the same set
  // this lambda assumes that set_number currently contains a unique set
  std::function<void(phier)> collapse_subtree = [&, this](phier node) {
    if (node->is_leaf()) {
      std::cout << "collapsing leaf node " << node->area << std::endl;
      for (auto v : ginfo.al.verts()) {
        if (ginfo.sets(v) == node->graph_subset) {
          ginfo.sets[v] = set_number;
        }
      }
    } else {
      collapse_subtree(node->children[0]);
      collapse_subtree(node->children[1]);
    }
  };

  auto new_subtree = copy_subtree(node);
  set_number++;
  collapse_subtree(new_subtree);
  
  std::cout << "making new set " << set_number << std::endl;
  
  new_subtree->area = find_area(new_subtree);
  new_subtree->graph_subset = set_number;

  // delete child nodes once everything is moved over
  new_subtree->children[0] = nullptr;
  new_subtree->children[1] = nullptr;

  return new_subtree;
}

void Hier_tree::collapse(double threshold_area) {

  I(threshold_area >= 0.0);
  
  // if the minimum area is zero, the full hierarchy is kept so we don't need to do anything
  
  if (threshold_area > 0.0) {
    auto new_tree = collapse(root, threshold_area);
    collapsed_hiers.push_back(new_tree);
  }
}
