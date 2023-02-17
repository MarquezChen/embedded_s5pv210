#/bin/bash

QTVERSION=4.8.5
PKGNAME=qt-everywhere-opensource-src-${QTVERSION}
QTPACKAGE=${PKGNAME}.tar.gz
DESTDIR=/usr/local/Trolltech/QtEmbedded-${QTVERSION}-arm

[ -d ${PKGNAME} ] && rm -rf ${PKGNAME}
[ -d ${DESTDIR} ] && rm -rf ${DESTDIR}

rm -rf qt-everywhere-opensource-src-${QTVERSION}
tar xvzf $QTPACKAGE

#----------------------------------------------------------
cd qt-everywhere-opensource-src-${QTVERSION}
echo yes | ./configure -opensource -embedded arm -xplatform qws/linux-arm-g++  -webkit -qt-gfx-transformed -qt-libtiff -qt-libmng  -qt-mouse-tslib -qt-mouse-pc -no-mouse-linuxtp -no-neon

make && make install

