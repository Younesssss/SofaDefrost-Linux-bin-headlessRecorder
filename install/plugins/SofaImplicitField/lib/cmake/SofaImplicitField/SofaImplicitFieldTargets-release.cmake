#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "SofaImplicitField" for configuration "Release"
set_property(TARGET SofaImplicitField APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(SofaImplicitField PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libSofaImplicitField.so.1.0"
  IMPORTED_SONAME_RELEASE "libSofaImplicitField.so.1.0"
  )

list(APPEND _IMPORT_CHECK_TARGETS SofaImplicitField )
list(APPEND _IMPORT_CHECK_FILES_FOR_SofaImplicitField "${_IMPORT_PREFIX}/lib/libSofaImplicitField.so.1.0" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
