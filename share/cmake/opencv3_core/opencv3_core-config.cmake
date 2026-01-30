set(_root "${CMAKE_CURRENT_LIST_DIR}/../../..")
get_filename_component(_root ${_root} ABSOLUTE)

set(OPENCV3_CORE_LIBRARIES
  ${_root}/lib/libopencv_core.dylib
  CACHE INTERNAL "" FORCE
)

set(OPENCV3_CORE_INCLUDE_DIRS
  ${_root}/include
  CACHE INTERNAL "" FORCE
)

qi_persistent_set(OPENCV3_CORE_DEPENDS ZLIB)
export_lib(OPENCV3_CORE)

