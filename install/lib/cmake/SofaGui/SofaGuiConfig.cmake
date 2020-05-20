# CMake package configuration file for SofaGui


####### Expanded from @PACKAGE_INIT@ by configure_package_config_file() #######
####### Any changes to this file will be overwritten by the next CMake run ####
####### The input file was SofaGuiConfig.cmake.in                            ########

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

set(SOFAGUI_TARGETS SofaGuiCommon;SofaGuiQt;SofaHeadlessRecorder;SofaGuiMain)

set(SOFAGUI_HAVE_SOFAHEADLESSRECORDER 1)
set(SOFAGUI_HAVE_SOFAGUIQT 1)
set(SOFAGUIQT_HAVE_QTVIEWER 1)
set(SOFAGUIQT_HAVE_QGLVIEWER 1)
set(SOFAGUIQT_HAVE_QT5_CHARTS 0)
set(SOFAGUIQT_HAVE_QT5_WEBENGINE 1)
set(SOFAGUIQT_HAVE_QWT 0)
set(SOFAGUIQT_HAVE_NODEEDITOR 0)
set(SOFAGUIQT_HAVE_FFMPEG_EXEC 1)

# Find dependencies
find_package(SofaGeneral REQUIRED)
find_package(SofaMisc REQUIRED)

if(SOFAGUI_HAVE_SOFAGUIQT)
    if(SOFAGUIQT_HAVE_QTVIEWER)
        find_package(Qt5 QUIET REQUIRED Core Gui OpenGL)
        if(SOFAGUIQT_HAVE_QT5_CHARTS)
            find_package(Qt5 QUIET REQUIRED Charts)
        endif()
        if(SOFAGUIQT_HAVE_QT5_WEBENGINE)
            find_package(Qt5 QUIET REQUIRED WebEngine WebEngineWidgets)
        endif()
    endif()
    if(SOFAGUIQT_HAVE_QGLVIEWER)
        find_package(QGLViewer QUIET REQUIRED)
    endif()
    if(SOFAGUIQT_HAVE_QWT)
        find_package(Qwt QUIET REQUIRED)
    endif()
endif()


if(SOFAGUIQT_HAVE_NODEEDITOR)
    find_package(NodeEditor QUIET REQUIRED)
endif()

foreach(target ${SOFAGUI_TARGETS})
    if(NOT TARGET ${target})
        include("${CMAKE_CURRENT_LIST_DIR}/SofaGuiTargets.cmake")
        break()
    endif()
endforeach()

check_required_components(${SOFAGUI_TARGETS})
