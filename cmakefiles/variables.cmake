# ******************************
# Copyleft 2017 Verbalsaint
# ******************************

# Directories
SET(PROJECT_CMAKE_FILES "${CMAKE_SOURCE_DIR}/cmakefiles")


# Build release type parameters
# cmake -DCMAKE_BUILD_TYPE=Release
# cmake -DCMAKE_BUILD_TYPE=Debug
# Possible values are empty, Debug, Release, RelWithDebInfo and MinSizeRel.
# http://stackoverflow.com/questions/7724569/debug-vs-release-in-cmake
SET(CMAKE_CXX_FLAGS_DEBUG "${CMAKE_CXX_FLAGS_DEBUG} -Wall")
SET(CMAKE_CXX_FLAGS_RELEASE "${CMAKE_CXX_FLAGS_RELEASE} -Wall -O3")

# Build RPATH Variables
SET(CMAKE_SKIP_BUILD_RPATH  FALSE) #  Include RPATH during the build.
SET(CMAKE_BUILD_WITH_INSTALL_RPATH FALSE) #  Use install RPATH during build.
SET(CMAKE_INSTALL_RPATH_USE_LINK_PATH FALSE) # Do not expand RPATH search. aka. no --rpath-link


# Install RPATH Variables
SET(CMAKE_INSTALL_RPATH "\$ORIGIN/lib" "\$ORIGIN") #  the RPATH to be used when installing

# Install PATH
SET(CMAKE_INSTALL_PREFIX "${CMAKE_BINARY_DIR}/install")

# http://www.cmake.org/pipermail/cmake/2008-January/019290.html
# SET (CMAKE_EXE_LINKER_FLAGS
#     "${CMAKE_EXE_LINKER_FLAGS} -Wl,-rpath,'$$ORIGIN/../xxx/'" )

# SET (CMAKE_SHARED_LINKER_FLAGS
#     "${CMAKE_SHARED_LINKER_FLAGS} -Wl,-rpath,'$ORIGIN/../xxx'" )


# the RPATH to be used when installing, but only if it's not a system directory
#LIST(FIND CMAKE_PLATFORM_IMPLICIT_LINK_DIRECTORIES "${CMAKE_INSTALL_PREFIX}/lib" isSystemDir)
#IF("${isSystemDir}" STREQUAL "-1")
#   SET(CMAKE_INSTALL_RPATH "${CMAKE_INSTALL_PREFIX}/lib")
#ENDIF("${isSystemDir}" STREQUAL "-1")
