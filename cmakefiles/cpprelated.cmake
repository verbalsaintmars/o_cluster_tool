# ******************************
# Copyleft 2017 Verbalsaint
# ******************************


SET (CMAKE_CXX_FLAGS_INIT                   "-std=c++1z -Wall")
SET (CMAKE_CXX_FLAGS_DEBUG_INIT             "-g")
SET (CMAKE_CXX_FLAGS_MINSIZEREL_INIT        "-Os -DNDEBUG")
SET (CMAKE_CXX_FLAGS_RELEASE_INIT           "-O4 -DNDEBUG")
SET (CMAKE_CXX_FLAGS_RELWITHDEBINFO_INIT    "-O2 -g")

#SET (CMAKE_AR      "/usr/bin/llvm-ar")
#SET (CMAKE_LINKER  "/usr/bin/clang++")
#SET (CMAKE_NM      "/usr/bin/llvm-nm")
#SET (CMAKE_OBJDUMP "/usr/bin/llvm-objdump")
#SET (CMAKE_RANLIB  "/usr/bin/llvm-ranlib")
