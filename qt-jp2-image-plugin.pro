TARGET = kimg_jp2

HEADERS = src/jp2_p.h src/scanlineconverter_p.h src/util_p.h
SOURCES = src/jp2.cpp src/scanlineconverter.cpp
OTHER_FILES = src/jp2.json

LIBS += 3rdparty/install/lib/openjp2.lib

INCLUDEPATH += 3rdparty/install/include/openjpeg-2.5

TEMPLATE = lib

CONFIG += release skip_target_version_ext c++14 warn_on plugin
CONFIG -= separate_debug_info debug debug_and_release force_debug_info

win32:VERSION = 6.11.1
QMAKE_TARGET_COMPANY = "Daniel Novomesky"
QMAKE_TARGET_PRODUCT = "qt-jp2-image-plugin"
QMAKE_TARGET_DESCRIPTION = "JPEG2000 plug-in for Qt6 applications"
QMAKE_TARGET_COPYRIGHT = "Copyright (C) 2024-2025 contributors to KDE project"
QMAKE_TARGET_COMMENTS = "Build using Qt 6.8.1"
