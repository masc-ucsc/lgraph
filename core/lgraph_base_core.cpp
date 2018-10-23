//  This file is distributed under the BSD 3-Clause License. See LICENSE for details.

#include <sys/types.h>
#include <sys/stat.h>
#include <unistd.h>

#include "lgraph_base_core.hpp"
#include "lgedgeiter.hpp"


std::string Lgraph_base_core::Setup_path::last_path="";

Lgraph_base_core::Setup_path::Setup_path(const std::string &path) {

  if (last_path == path)
    return;

  console->info("Lgraph_base_core.cpp: mkdir {}",path);

  mkdir(path.c_str(), 0755);

  last_path = path;
}

Lgraph_base_core::Lgraph_base_core(const std::string &_path, const std::string &_name)
  : p(_path)
  , path(_path)
    , name(_name)
    , long_name("lgraph_" + _name)
    , node_internal(path + "/lgraph_" + name + "_nodes") {
    };

Fast_edge_iterator Lgraph_base_core::fast() const {
  if(node_internal.empty())
    return Fast_edge_iterator(0, this);

  return Fast_edge_iterator(1, this);
}

bool Lgraph_base_core::is_path_ok(const std::string &path) {
  struct stat info;

  if( stat( path.c_str(), &info ) != 0 )
    return false;
  else if( info.st_mode & S_IFDIR )
    return true;

  return false;
}

int Console_init::_static_initializer = Console_init::initialize_logger();
