#----------------------------------------------------------------
# Generated CMake target import file for configuration "RelWithDebInfo".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "Poco::DataPostgreSQL" for configuration "RelWithDebInfo"
set_property(TARGET Poco::DataPostgreSQL APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(Poco::DataPostgreSQL PROPERTIES
  IMPORTED_LOCATION_RELWITHDEBINFO "${_IMPORT_PREFIX}/lib/libPocoDataPostgreSQL.so.81"
  IMPORTED_SONAME_RELWITHDEBINFO "libPocoDataPostgreSQL.so.81"
  )

list(APPEND _IMPORT_CHECK_TARGETS Poco::DataPostgreSQL )
list(APPEND _IMPORT_CHECK_FILES_FOR_Poco::DataPostgreSQL "${_IMPORT_PREFIX}/lib/libPocoDataPostgreSQL.so.81" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
