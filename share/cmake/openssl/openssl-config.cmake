get_filename_component(_openssl_root "${CMAKE_CURRENT_LIST_FILE}" PATH)
set(_openssl_root "${_openssl_root}/../../..")
get_filename_component(_openssl_root "${_openssl_root}" ABSOLUTE)

set(
  OPENSSL_LIBRARIES
  ${_openssl_root}/lib/libssl.1.0.0.dylib
  ${_openssl_root}/lib/libcrypto.1.0.0.dylib
  CACHE INTERNAL "" FORCE
)

set(
  OPENSSL_INCLUDE_DIRS
  ${_openssl_root}/include
  CACHE INTERNAL "" FORCE
)

export_lib(OPENSSL)
