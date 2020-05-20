#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "gtest" for configuration "Release"
set_property(TARGET gtest APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(gtest PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libgtest.so.2.6.2"
  IMPORTED_SONAME_RELEASE "libgtest.so.2.6.2"
  )

list(APPEND _IMPORT_CHECK_TARGETS gtest )
list(APPEND _IMPORT_CHECK_FILES_FOR_gtest "${_IMPORT_PREFIX}/lib/libgtest.so.2.6.2" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
