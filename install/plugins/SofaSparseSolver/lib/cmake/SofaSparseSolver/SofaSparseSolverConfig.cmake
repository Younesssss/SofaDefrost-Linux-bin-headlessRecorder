# CMake package configuration file for the SofaSparseSolver module


####### Expanded from @PACKAGE_INIT@ by configure_package_config_file() #######
####### Any changes to this file will be overwritten by the next CMake run ####
####### The input file was SofaSparseSolverConfig.cmake.in                            ########

get_filename_component(PACKAGE_PREFIX_DIR "${CMAKE_CURRENT_LIST_DIR}/../../../" ABSOLUTE)

macro(set_and_check _var _file)
  set(${_var} "${_file}")
  if(NOT EXISTS "${_file}")
    message(FATAL_ERROR "File or directory ${_file} referenced by variable ${_var} does not exist !")
  endif()
endmacro()

macro(check_required_components _NAME)
  foreach(comp ${${_NAME}_FIND_COMPONENTS})
    if(NOT ${_NAME}_${comp}_FOUND)
      if(${_NAME}_FIND_REQUIRED_${comp})
        set(${_NAME}_FOUND FALSE)
      endif()
    endif()
  endforeach()
endmacro()

####################################################################################

set(SOFASPARSESOLVER_HAVE_METIS )
set(SOFASPARSESOLVER_HAVE_CSPARSE )

find_package(SofaBase REQUIRED)
find_package(SofaCommon REQUIRED)
find_package(SofaGeneral REQUIRED)

if(SOFASPARSESOLVER_HAVE_METIS)
    find_package(Metis QUIET REQUIRED)
endif()
if(SOFASPARSESOLVER_HAVE_CSPARSE)
    find_package(CSparse QUIET REQUIRED)
endif()

### Is the target existing ?
if(NOT TARGET SofaSparseSolver)
    ### If not we are building out of tree.
    include("${CMAKE_CURRENT_LIST_DIR}/SofaSparseSolverTargets.cmake")
endif()

check_required_components(SofaSparseSolver)
