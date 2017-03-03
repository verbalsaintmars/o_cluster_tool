# ******************************
# Copyleft 2017 Verbalsaint
# ******************************
# enable c++1z/14 build

include(CheckCXXCompilerFlag)

macro(ChkCompilerVer)
   if("${CMAKE_CXX_COMPILER_ID}" STREQUAL "GNU")
       # require at least gcc 4.8
      if (CMAKE_CXX_COMPILER_VERSION VERSION_GREATER 6.0.0)
         set(COMPILER_VERSION_CHK 1)
      endif()

   elseif ("${CMAKE_CXX_COMPILER_ID}" STREQUAL "Clang")
       # require at least clang 3.2
      if (CMAKE_CXX_COMPILER_VERSION VERSION_GREATER 3.8)
         set(COMPILER_VERSION_CHK 1)
      endif()

   else()
       message(WARNING "Unsupported compiler! gcc > 6.0.0 || clang > 3.8")
   endif()
endmacro(ChkCompilerVer)


macro(SETCXX11FLAG)

   ChkCompilerVer()

   CHECK_CXX_COMPILER_FLAG("-std=c++14" COMPILER_SUPPORTS_CXX14)
   CHECK_CXX_COMPILER_FLAG("-std=c++1z" COMPILER_SUPPORTS_CXX1Z)

   if(${COMPILER_VERSION_CHK})
      if(COMPILER_SUPPORTS_CXX1Z)
         list(INSERT CMAKE_CXX_FLAGS 0 "-std=c++1z")

      elseif(COMPILER_SUPPORTS_CXX14)
         list(INSERT CMAKE_CXX_FLAGS 0 "-std=c++14")

      else()
         message(STATUS "${CMAKE_CXX_COMPILER} has no C++14 support.")
      endif()
   endif()
endmacro(SETCXX11FLAG)

SETCXX11FLAG()
