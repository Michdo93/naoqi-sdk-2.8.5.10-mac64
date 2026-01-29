set(_root "${CMAKE_CURRENT_LIST_DIR}/../../..")
get_filename_component(_root ${_root} ABSOLUTE)

set(OPENCV3_VIDEOIO_LIBRARIES
  ${_root}/lib/libopencv_videoio.dylib
  CACHE INTERNAL "" FORCE
)

set(OPENCV3_VIDEOIO_INCLUDE_DIRS
  ${_root}/include
  CACHE INTERNAL "" FORCE
)

qi_persistent_set(OPENCV3_VIDEOIO_DEPENDS OPENCV3_CORE OPENCV3_IMGPROC)
export_lib(OPENCV3_VIDEOIO)

