cmake_minimum_required (VERSION 3.7)
project(o_cluster_tool_server CXX)

# Combine those into single dynamic library
add_library(ocrserver SHARED optparse.cpp io.cpp jsonparse.cpp)

add_executable(
    server
    main.cpp)

# copy ocr.json to build directory
configure_file("ocr.json" ${CMAKE_BINARY_DIR}/server COPYONLY)
# setup version/soname version
set_target_properties(ocrserver PROPERTIES VERSION 1.0 SOVERSION 1)
# link pthread dynamically
target_link_libraries(server pthread)
# link gflags dynamically
target_link_libraries(server gflags)
# link boost_filesystem
target_link_libraries(server boost_filesystem)
# link boost_system
target_link_libraries(server boost_system)
# link ocrserver library
target_link_libraries(server ocrserver)

install(TARGETS ocrserver LIBRARY DESTINATION ${CMAKE_INSTALL_PREFIX}/lib)
install(TARGETS server RUNTIME DESTINATION ${CMAKE_INSTALL_PREFIX})
install(FILES "ocr.json" DESTINATION ${CMAKE_INSTALL_PREFIX})
