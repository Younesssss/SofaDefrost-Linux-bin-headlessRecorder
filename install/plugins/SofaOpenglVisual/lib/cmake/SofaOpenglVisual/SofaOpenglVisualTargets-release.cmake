#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "SofaOpenglVisual" for configuration "Release"
set_property(TARGET SofaOpenglVisual APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(SofaOpenglVisual PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libSofaOpenglVisual.so.1.0"
  IMPORTED_SONAME_RELEASE "libSofaOpenglVisual.so.1.0"
  )

list(APPEND _IMPORT_CHECK_TARGETS SofaOpenglVisual )
list(APPEND _IMPORT_CHECK_FILES_FOR_SofaOpenglVisual "${_IMPORT_PREFIX}/lib/libSofaOpenglVisual.so.1.0" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
