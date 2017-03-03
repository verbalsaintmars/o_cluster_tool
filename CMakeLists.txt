cmake_minimum_required (VERSION 3.7)
project(o_cluster_tool CXX)

# includes
include("${PROJECT_SOURCE_DIR}/cmakefiles/variables.cmake")
include("${PROJECT_CMAKE_FILES}/cpprelated.cmake")
include("${PROJECT_CMAKE_FILES}/cpp1zcheck.cmake")
include("${PROJECT_CMAKE_FILES}/needed_packages.cmake")


add_subdirectory(server)
