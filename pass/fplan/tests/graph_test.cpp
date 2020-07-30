#include "Adjacency_list.hpp"
#include "range/v3/all.hpp"

#include <iostream>
#include <string>
using namespace ranges;
using namespace graph;
using namespace std;

int main() {
  Bi_adjacency_list g;
  auto v1 = g.insert_vert();
  auto v2 = g.insert_vert();
  auto v3 = g.insert_vert();
  
  auto names = g.vert_map<string>();
  names[v1] = "v1";
  names[v2] = "v2";
  names[v3] = "v3";

  auto smap = g.vert_map<int>();
  smap[v1] = 0;
  smap[v2] = 0;
  smap[v3] = 0;

  int valid_set = 0;
  
  auto &smapref = smap;
  
  auto not_in_set = [&smapref, &valid_set](decltype(g.insert_vert()) v) -> bool {
    return smapref(v) != valid_set;
  };

  auto vset = g.verts() | view::remove_if(not_in_set);
  
  for (auto v : vset) {
    cout << names[v] << endl;
  }
  
  for (auto v : vset) {
    smapref[v] = 42; // test modification
  }

  valid_set = 42;
  
  for (auto v : vset) {
    cout << names[v] << endl; // only prints "v1" if smapref is captured by reference in the lambda
  }
}
