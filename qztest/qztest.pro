TEMPLATE = app
QT -= gui
QT += network
QT += testlib
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

# Input
HEADERS += qztest.h \
testjlcompress.h \
testquachecksum32.h \
testquagzipfile.h \
testquaziodevice.h \
testquazipdir.h \
testquazipfile.h \
testquazip.h \
    testquazipnewinfo.h \
    testquazipfileinfo.h

SOURCES += qztest.cpp \
testjlcompress.cpp \
testquachecksum32.cpp \
testquagzipfile.cpp \
testquaziodevice.cpp \
testquazip.cpp \
testquazipdir.cpp \
testquazipfile.cpp \
    testquazipnewinfo.cpp \
    testquazipfileinfo.cpp

INCLUDEPATH += $$PWD/..
