#!/bin/bash

(cd src/qt && ./preconfig.sh --qt-config "-no-rpath -system-zlib -system-libjpeg -system-libpng -system-sqlite -plugin-sql-sqlite" && cd ../..)
src/qt/bin/qmake
make

