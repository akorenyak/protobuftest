#-------------------------------------------------
#
# Project created by QtCreator 2017-02-06T07:44:59
#
#-------------------------------------------------

QT       -= core gui

TARGET = Protocol
TEMPLATE = lib
CONFIG += staticlib

BITSIZE = $$system(getconf LONG_BIT)
 if (contains(BITSIZE, 64)) {
     LIBS += /usr/lib/x86_64-linux-gnu/libprotobuf.so
 }
 if (contains(BITSIZE, 32)) {
     LIBS += /usr/lib/libprotobuf.so
 }
PROTOS = messages.proto
include(proto_compile.pri)


SOURCES += protocol.cpp

HEADERS += protocol.h
unix {
    target.path = /usr/lib
    INSTALLS += target
}

HEADERS += /usr/include
