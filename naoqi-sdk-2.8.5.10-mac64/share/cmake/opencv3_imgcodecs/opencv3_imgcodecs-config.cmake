set(_root "${CMAKE_CURRENT_LIST_DIR}/../../..")
get_filename_component(_root ${_root} ABSOLUTE)

set(OPENCV3_IMGCODECS_LIBRARIES
  ${_root}/lib/libopencv_imgcodecs.dylib
  CACHE INTERNAL "" FORCE
)

set(OPENCV3_IMGCODECS_INCLUDE_DIRS
  ${_root}/include
  CACHE INTERNAL "" FORCE
)

qi_persistent_set(OPENCV3_IMGCODECS_DEPENDS OPENCV3_CORE OPENCV3_IMGPROC ZLIB)
export_lib(OPENCV3_IMGCODECS)

