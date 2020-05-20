#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "SofaBaseCollision" for configuration "Release"
set_property(TARGET SofaBaseCollision APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(SofaBaseCollision PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libSofaBaseCollision.so.20.06.99"
  IMPORTED_SONAME_RELEASE "libSofaBaseCollision.so.20.06.99"
  )

list(APPEND _IMPORT_CHECK_TARGETS SofaBaseCollision )
list(APPEND _IMPORT_CHECK_FILES_FOR_SofaBaseCollision "${_IMPORT_PREFIX}/lib/libSofaBaseCollision.so.20.06.99" )

# Import target "SofaBaseLinearSolver" for configuration "Release"
set_property(TARGET SofaBaseLinearSolver APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(SofaBaseLinearSolver PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libSofaBaseLinearSolver.so.20.06.99"
  IMPORTED_SONAME_RELEASE "libSofaBaseLinearSolver.so.20.06.99"
  )

list(APPEND _IMPORT_CHECK_TARGETS SofaBaseLinearSolver )
list(APPEND _IMPORT_CHECK_FILES_FOR_SofaBaseLinearSolver "${_IMPORT_PREFIX}/lib/libSofaBaseLinearSolver.so.20.06.99" )

# Import target "SofaBaseMechanics" for configuration "Release"
set_property(TARGET SofaBaseMechanics APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(SofaBaseMechanics PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libSofaBaseMechanics.so.20.06.99"
  IMPORTED_SONAME_RELEASE "libSofaBaseMechanics.so.20.06.99"
  )

list(APPEND _IMPORT_CHECK_TARGETS SofaBaseMechanics )
list(APPEND _IMPORT_CHECK_FILES_FOR_SofaBaseMechanics "${_IMPORT_PREFIX}/lib/libSofaBaseMechanics.so.20.06.99" )

# Import target "SofaBaseTopology" for configuration "Release"
set_property(TARGET SofaBaseTopology APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(SofaBaseTopology PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libSofaBaseTopology.so.20.06.99"
  IMPORTED_SONAME_RELEASE "libSofaBaseTopology.so.20.06.99"
  )

list(APPEND _IMPORT_CHECK_TARGETS SofaBaseTopology )
list(APPEND _IMPORT_CHECK_FILES_FOR_SofaBaseTopology "${_IMPORT_PREFIX}/lib/libSofaBaseTopology.so.20.06.99" )

# Import target "SofaBaseVisual" for configuration "Release"
set_property(TARGET SofaBaseVisual APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(SofaBaseVisual PROPERTIES
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELEASE "tinyxml"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libSofaBaseVisual.so.20.06.99"
  IMPORTED_SONAME_RELEASE "libSofaBaseVisual.so.20.06.99"
  )

list(APPEND _IMPORT_CHECK_TARGETS SofaBaseVisual )
list(APPEND _IMPORT_CHECK_FILES_FOR_SofaBaseVisual "${_IMPORT_PREFIX}/lib/libSofaBaseVisual.so.20.06.99" )

# Import target "SofaBaseUtils" for configuration "Release"
set_property(TARGET SofaBaseUtils APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(SofaBaseUtils PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libSofaBaseUtils.so.20.06.99"
  IMPORTED_SONAME_RELEASE "libSofaBaseUtils.so.20.06.99"
  )

list(APPEND _IMPORT_CHECK_TARGETS SofaBaseUtils )
list(APPEND _IMPORT_CHECK_FILES_FOR_SofaBaseUtils "${_IMPORT_PREFIX}/lib/libSofaBaseUtils.so.20.06.99" )

# Import target "SofaBase" for configuration "Release"
set_property(TARGET SofaBase APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(SofaBase PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libSofaBase.so.20.06.99"
  IMPORTED_SONAME_RELEASE "libSofaBase.so.20.06.99"
  )

list(APPEND _IMPORT_CHECK_TARGETS SofaBase )
list(APPEND _IMPORT_CHECK_FILES_FOR_SofaBase "${_IMPORT_PREFIX}/lib/libSofaBase.so.20.06.99" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
