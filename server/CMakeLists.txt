cmake_minimum_required (VERSION 3.7)
project(o_cluster_tool_server CXX)

add_library(optparse OBJECT optparse.cpp)

add_executable(ocrserver main.cpp $<TARGET_OBJECTS:optparse>)

# link pthread dynamically
target_link_libraries(ocrserver pthread)
# link gflags statically
target_link_libraries(ocrserver libgflags.a)
