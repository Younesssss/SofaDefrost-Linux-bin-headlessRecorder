#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "SofaGuiCommon" for configuration "Release"
set_property(TARGET SofaGuiCommon APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(SofaGuiCommon PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libSofaGuiCommon.so.20.06.99"
  IMPORTED_SONAME_RELEASE "libSofaGuiCommon.so.20.06.99"
  )

list(APPEND _IMPORT_CHECK_TARGETS SofaGuiCommon )
list(APPEND _IMPORT_CHECK_FILES_FOR_SofaGuiCommon "${_IMPORT_PREFIX}/lib/libSofaGuiCommon.so.20.06.99" )

# Import target "SofaGuiQt" for configuration "Release"
set_property(TARGET SofaGuiQt APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(SofaGuiQt PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libSofaGuiQt.so.20.06.99"
  IMPORTED_SONAME_RELEASE "libSofaGuiQt.so.20.06.99"
  )

list(APPEND _IMPORT_CHECK_TARGETS SofaGuiQt )
list(APPEND _IMPORT_CHECK_FILES_FOR_SofaGuiQt "${_IMPORT_PREFIX}/lib/libSofaGuiQt.so.20.06.99" )

# Import target "SofaHeadlessRecorder" for configuration "Release"
set_property(TARGET SofaHeadlessRecorder APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(SofaHeadlessRecorder PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libSofaHeadlessRecorder.so.20.06.99"
  IMPORTED_SONAME_RELEASE "libSofaHeadlessRecorder.so.20.06.99"
  )

list(APPEND _IMPORT_CHECK_TARGETS SofaHeadlessRecorder )
list(APPEND _IMPORT_CHECK_FILES_FOR_SofaHeadlessRecorder "${_IMPORT_PREFIX}/lib/libSofaHeadlessRecorder.so.20.06.99" )

# Import target "SofaGuiMain" for configuration "Release"
set_property(TARGET SofaGuiMain APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(SofaGuiMain PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libSofaGuiMain.so.20.06.99"
  IMPORTED_SONAME_RELEASE "libSofaGuiMain.so.20.06.99"
  )

list(APPEND _IMPORT_CHECK_TARGETS SofaGuiMain )
list(APPEND _IMPORT_CHECK_FILES_FOR_SofaGuiMain "${_IMPORT_PREFIX}/lib/libSofaGuiMain.so.20.06.99" )

# Import target "runSofa" for configuration "Release"
set_property(TARGET runSofa APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(runSofa PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/runSofa"
  )

list(APPEND _IMPORT_CHECK_TARGETS runSofa )
list(APPEND _IMPORT_CHECK_FILES_FOR_runSofa "${_IMPORT_PREFIX}/bin/runSofa" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
