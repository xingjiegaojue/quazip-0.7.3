INCLUDEPATH += $$PWD

win32 {
    LIBS += -L$$PWD/lib/windows -lquazip
}

android {
    LIBS += -L$$PWD/lib/android -lquazip
    ANDROID_EXTRA_LIBS += $$PWD/lib/android/libquazip.so \
}