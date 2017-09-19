include(../examples.pri)
include(../../build.pri)

QT += core network
QT -= gui

TEMPLATE = app
DESTDIR = ../../bin

CONFIG( debug, debug|release ) {
    LIBS += -L../../bin \
            -llog4qtd
} else {
    LIBS += -L../../bin \
            -llog4qt
}

SOURCES += \
    main.cpp \
    loggerobject.cpp \
    loggerobjectprio.cpp \
    loggerstatic.cpp

HEADERS  += \
    loggerobject.h \
    loggerobjectprio.h \
    loggerstatic.h

INCLUDEPATH += ../../src

