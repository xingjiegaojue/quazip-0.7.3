TARGET = quazip
TEMPLATE = lib
CONFIG += dll
QT -= gui

# The ABI version.
!win32:VERSION = 1.0.0

win32 {
    # workaround for qdatetime.h macro bug
    DEFINES += NOMINMAX
    DESTDIR = $$PWD/lib/windows
}

android {
    DESTDIR = $$PWD/lib/android
}

# 1.0.0 is the first stable ABI.
# The next binary incompatible change will be 2.0.0 and so on.
# The existing QuaZIP policy on changing ABI requires to bump the
# major version of QuaZIP itself as well. Note that there may be
# other reasons for chaging the major version of QuaZIP, so
# in case where there is a QuaZIP major version bump but no ABI change,
# the VERSION variable will stay the same.

# For example:

# QuaZIP 1.0 is released after some 0.x, keeping binary compatibility.
# VERSION stays 1.0.0.
# Then some binary incompatible change is introduced. QuaZIP goes up to
# 2.0, VERSION to 2.0.0.
# And so on.


# This one handles dllimport/dllexport directives.
DEFINES += QUAZIP_BUILD

# You'll need to define this one manually if using a build system other
# than qmake or using QuaZIP sources directly in your project.
CONFIG(staticlib): DEFINES += QUAZIP_STATIC

# Input
include(quazip.pri)
include(../zlib/zlib_lib.pri)
