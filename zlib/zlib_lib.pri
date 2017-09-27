INCLUDEPATH += $$PWD

win32 {
    LIBS += -L$$PWD/lib/windows -lzlib
}

android {
    LIBS += -L$$PWD/lib/android -lzlib
    ANDROID_EXTRA_LIBS += $$PWD/lib/android/libzlib.so \
}