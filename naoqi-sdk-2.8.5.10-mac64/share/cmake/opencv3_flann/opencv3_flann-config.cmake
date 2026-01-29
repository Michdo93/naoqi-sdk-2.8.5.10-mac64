set(_root "${CMAKE_CURRENT_LIST_DIR}/../../..")
get_filename_component(_root ${_root} ABSOLUTE)

set(OPENCV3_FLANN_LIBRARIES
  ${_root}/lib/libopencv_flann.dylib
  CACHE INTERNAL "" FORCE
)

set(OPENCV3_FLANN_INCLUDE_DIRS
  ${_root}/include
  CACHE INTERNAL "" FORCE
)

qi_persistent_set(OPENCV3_FLANN_DEPENDS OPENCV3_CORE)
export_lib(OPENCV3_FLANN)

