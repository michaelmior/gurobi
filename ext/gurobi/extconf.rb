require "mkmf"

# set Gurobi header & lib
dir_config 'grb',
    ENV['GUROBI_HOME'] + '/include',
    ENV['GUROBI_HOME'] + '/lib'
abort 'Can not find Gurobi 5.6 C library'   if !have_library('gurobi56')
abort 'Can not find Gurobi 5.6 C++ library' if !have_library('gurobi_c++')

create_makefile("gurobi/gurobi")
