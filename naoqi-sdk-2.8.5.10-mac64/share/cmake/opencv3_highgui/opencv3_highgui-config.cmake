set(_root "${CMAKE_CURRENT_LIST_DIR}/../../..")
get_filename_component(_root ${_root} ABSOLUTE)

set(OPENCV3_HIGHGUI_LIBRARIES
  ${_root}/lib/libopencv_highgui.dylib
  CACHE INTERNAL "" FORCE
)

set(OPENCV3_HIGHGUI_INCLUDE_DIRS
  ${_root}/include
  CACHE INTERNAL "" FORCE
)

qi_persistent_set(OPENCV3_HIGHGUI_DEPENDS OPENCV3_CORE OPENCV3_IMGPROC)
export_lib(OPENCV3_HIGHGUI)

