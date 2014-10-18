#!/bin/bash

export CFLAGS="-g -pg -O2 -fstack-protector-strong -Wformat -Werror=format-security"
export CPPFLAGS="-pg -D_FORTIFY_SOURCE=2"
export CXXFLAGS="-g -pg -O2 -fstack-protector-strong -Wformat -Werror=format-security"
export FCFLAGS="-g -O2 -fstack-protector-strong"
export FFLAGS="-g -O2 -fstack-protector-strong"
export GCJFLAGS="-g -O2 -fstack-protector-strong"
export LDFLAGS="-pg -Wl,-z,relro"
export LFLAGS="-pg"
export OBJCFLAGS="-g -O2 -fstack-protector-strong -Wformat -Werror=format-security"
export OBJCXXFLAGS="-g -O2 -fstack-protector-strong -Wformat -Werror=format-security"

(cd src/qt && ./preconfig.sh --qt-config "-no-rpath -system-zlib -system-libjpeg -system-libpng -system-sqlite -plugin-sql-sqlite" && cd ../..)
src/qt/bin/qmake
make

