#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "SofaPython" for configuration "Release"
set_property(TARGET SofaPython APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(SofaPython PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libSofaPython.so.0.1"
  IMPORTED_SONAME_RELEASE "libSofaPython.so.0.1"
  )

list(APPEND _IMPORT_CHECK_TARGETS SofaPython )
list(APPEND _IMPORT_CHECK_FILES_FOR_SofaPython "${_IMPORT_PREFIX}/lib/libSofaPython.so.0.1" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
