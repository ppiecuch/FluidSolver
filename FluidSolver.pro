QT +=  core gui widgets opengl xml

TARGET = FluidSolver
TEMPLATE = app

CONFIG -= app_bundle
#CONFIG += with_leap

debug: DBG = -dgb

DESTDIR = build$$DBG-$$[QMAKE_SPEC]/bin
OBJECTS_DIR = build$$DBG-$$[QMAKE_SPEC]
MOC_DIR = build$$DBG-$$[QMAKE_SPEC]
UI_DIR = build$$DBG-$$[QMAKE_SPEC]
RCC_DIR = build$$DBG-$$[QMAKE_SPEC]

with_leap: DEFINES += WITH_LEAP

HEADERS += \
    solver/Segment.hpp \
    solver/Obstacles.hpp \
    solver/Matrix3D.hpp \
    solver/Matrix2D.hpp \
    solver/Matrix.hpp \
    solver/FluidSolver2D.hpp \
    solver/FloatMatrix2D.hpp \
    display/ui_Dialog.h \
    display/SimplePrint.hpp \
    display/Print.hpp \
    display/ParticlesPrint.hpp \
    display/GUI.hpp \
    display/Dialog.hpp \
    display/CurvePrint.hpp \
    display/ColorPrint.hpp \
    config.hpp

SOURCES += \
    solver/Segment.cpp \
    solver/Obstacles.cpp \
    solver/FluidSolver2D.cpp \
    solver/FloatMatrix2D.cpp \
    display/SimplePrint.cpp \
    display/Print.cpp \
    display/ParticlesPrint.cpp \
    display/main.cpp \
    display/GUI.cpp \
    display/Dialog.cpp \
    display/CurvePrint.cpp \
    display/ColorPrint.cpp \
    config.cpp

with_leap {
	HEADERS += \
    	display/Leap.h \
    	display/LeapMath.h \
    	display/LeapMotion.h
	SOURCES += \
		display/LeapMotion.cpp
}

FORMS += \
    display/Dialog.ui

OTHER_FILES += \
    display/Leap.i

INCLUDEPATH += $$PWD/
DEPENDPATH += $$PWD/
