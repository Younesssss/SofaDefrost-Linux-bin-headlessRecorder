#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "SofaDistanceGrid" for configuration "Release"
set_property(TARGET SofaDistanceGrid APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(SofaDistanceGrid PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libSofaDistanceGrid.so.1.0"
  IMPORTED_SONAME_RELEASE "libSofaDistanceGrid.so.1.0"
  )

list(APPEND _IMPORT_CHECK_TARGETS SofaDistanceGrid )
list(APPEND _IMPORT_CHECK_FILES_FOR_SofaDistanceGrid "${_IMPORT_PREFIX}/lib/libSofaDistanceGrid.so.1.0" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
