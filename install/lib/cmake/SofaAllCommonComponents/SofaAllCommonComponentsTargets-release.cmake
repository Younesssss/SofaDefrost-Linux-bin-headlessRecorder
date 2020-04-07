#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "SofaAllCommonComponents" for configuration "Release"
set_property(TARGET SofaAllCommonComponents APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(SofaAllCommonComponents PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libSofaAllCommonComponents.so"
  IMPORTED_SONAME_RELEASE "libSofaAllCommonComponents.so"
  )

list(APPEND _IMPORT_CHECK_TARGETS SofaAllCommonComponents )
list(APPEND _IMPORT_CHECK_FILES_FOR_SofaAllCommonComponents "${_IMPORT_PREFIX}/lib/libSofaAllCommonComponents.so" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
