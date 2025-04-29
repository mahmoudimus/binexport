# See https://cmake.org/cmake/help/latest/policy/CMP0167.html
# This policy is used to drop the FindBoost module.
# We need to manually set the include directories for Boost.
# See: https://stackoverflow.com/a/79147222/133514

set(Boost_INCLUDE_DIR "${BINEXPORT_SOURCE_DIR}/boost_parts")
set(Boost_FOUND TRUE)
add_library(Boost::headers INTERFACE IMPORTED)
target_include_directories(Boost::headers INTERFACE ${Boost_INCLUDE_DIR})