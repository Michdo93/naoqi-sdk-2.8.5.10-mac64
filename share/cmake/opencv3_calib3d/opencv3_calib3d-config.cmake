set(_root "${CMAKE_CURRENT_LIST_DIR}/../../..")
get_filename_component(_root ${_root} ABSOLUTE)

set(OPENCV3_CALIB3D_LIBRARIES
  ${_root}/lib/libopencv_calib3d.dylib
  CACHE INTERNAL "" FORCE
)

set(OPENCV3_CALIB3D_INCLUDE_DIRS
  ${_root}/include
  CACHE INTERNAL "" FORCE
)

qi_persistent_set(OPENCV3_CALIB3D_DEPENDS OPENCV3_CORE OPENCV3_FEATURES2D)
export_lib(OPENCV3_CALIB3D)

