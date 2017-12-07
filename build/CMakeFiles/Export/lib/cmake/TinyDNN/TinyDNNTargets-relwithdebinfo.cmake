#----------------------------------------------------------------
# Generated CMake target import file for configuration "RelWithDebInfo".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "TinyDNN::TinyDNN" for configuration "RelWithDebInfo"
set_property(TARGET TinyDNN::TinyDNN APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(TinyDNN::TinyDNN PROPERTIES
  IMPORTED_LOCATION_RELWITHDEBINFO "${_IMPORT_PREFIX}/lib/TinyDNN.lib"
  )

list(APPEND _IMPORT_CHECK_TARGETS TinyDNN::TinyDNN )
list(APPEND _IMPORT_CHECK_FILES_FOR_TinyDNN::TinyDNN "${_IMPORT_PREFIX}/lib/TinyDNN.lib" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
