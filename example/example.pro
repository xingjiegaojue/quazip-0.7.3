TEMPLATE = app
QT -= gui
QT += network
CONFIG += console
CONFIG -= app_bundle
DEPENDPATH += .
INCLUDEPATH += .

win32 {
    # workaround for qdatetime.h macro bug
    DEFINES += NOMINMAX
}

CONFIG(staticlib): DEFINES += QUAZIP_STATIC

include(../quazip/quazip_lib.pri)
include(../zlib/zlib_lib.pri)

SOURCES += main.cpp

INCLUDEPATH += $$PWD/..
