#-------------------------------------------------
#
# Project created by QtCreator 2017-02-06T07:44:59
#
#-------------------------------------------------

QT       -= core gui

TARGET = Protocol
TEMPLATE = lib
CONFIG += staticlib

win32 {
    ## Windows common build here

    !contains(QMAKE_TARGET.arch, x86_64) {
        message("x86 build")
        CONFIG(debug, debug|release) {
                LIBS += -L../protobuf/libs/win32/debug  -llibprotobuf
        } else {
                LIBS += -L../protobuf/libs/win32/release -llibprotobuf
        }

        ## Windows x86 (32bit) specific build here

    } else {
        message("x86_64 build")

        ## Windows x64 (64bit) specific build here

    }
}

linux {
 BITSIZE = $$system(getconf LONG_BIT)
 if (contains(BITSIZE, 64)) {
     LIBS += /usr/lib/x86_64-linux-gnu/libprotobuf.so
 }
 if (contains(BITSIZE, 32)) {
     LIBS += /usr/lib/libprotobuf.so
 }
}

PROTOS = messages.proto
include(proto_compile.pri)


SOURCES += protocol.cpp

HEADERS += protocol.h
unix {
    target.path = /usr/lib
    INSTALLS += target
}

unix {
HEADERS += /usr/include
}
win32 {
INCLUDEPATH +=  ../protobuf/include
}
