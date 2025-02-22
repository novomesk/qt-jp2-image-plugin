project (openjpeg-dependency)

#Example:
#cmake .. -DEXTERNALS_DOWNLOAD_DIR=/dev2/d -DINSTALL_ROOT=/dev2/i

cmake_minimum_required(VERSION 3.7.2)
include(ExternalProject)

if(NOT IS_DIRECTORY ${EXTERNALS_DOWNLOAD_DIR})
    message(FATAL_ERROR "No externals download dir set. Use -DEXTERNALS_DOWNLOAD_DIR")
endif()

if(NOT IS_DIRECTORY ${INSTALL_ROOT})
    message(FATAL_ERROR "No install dir set. Use -DINSTALL_ROOT")
endif()

set(TOP_INST_DIR ${INSTALL_ROOT})
set(EXTPREFIX "${TOP_INST_DIR}")
set(CMAKE_PREFIX_PATH "${EXTPREFIX}")

SET(EXTPREFIX_heif "${EXTPREFIX}" )

ExternalProject_Add(
    ext_openjpeg
    DOWNLOAD_DIR ${EXTERNALS_DOWNLOAD_DIR}

    URL https://github.com/uclouvain/openjpeg/archive/refs/tags/v2.5.3.tar.gz
    URL_HASH SHA256=368fe0468228e767433c9ebdea82ad9d801a3ad1e4234421f352c8b06e7aa707
    DOWNLOAD_EXTRACT_TIMESTAMP FALSE

    CMAKE_ARGS -DCMAKE_INSTALL_PREFIX=${EXTPREFIX_heif} -DCMAKE_BUILD_TYPE=Release -DBUILD_STATIC_LIBS=OFF -DBUILD_CODEC=OFF

    UPDATE_COMMAND ""
)
