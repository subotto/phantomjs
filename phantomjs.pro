TEMPLATE = subdirs
CONFIG += ordered
SUBDIRS += src/phantomjs.pro

QMAKE_CXXFLAGS += -g -pg
QMAKE_LFLAGS += -pg
