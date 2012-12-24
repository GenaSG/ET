#!/bin/bash
BUILD_DIR=./build
FILES_TO_COMPRESS=""
MPBINDIR=./mp_bin
set -x
pushd $BUILD_DIR;{
[ ! -e ./mp_bin ] && mkdir $MPBINDIR
[ -e ./cgame_mac.bundle ] && zip -9 -r cgame_mac.zip ./cgame_mac.bundle && mv cgame_mac.zip $MPBINDIR/cgame_mac 
[ -e ./qagame_mac.bundle ] && zip -9 -r qagame_mac.zip ./qagame_mac.bundle && mv qagame_mac.zip $MPBINDIR/qagame_mac 
[ -e ./ui_mac.bundle ] && zip -9 -r ui_mac.zip ./ui_mac.bundle && mv ui_mac.zip $MPBINDIR/ui_mac 
zip -9 -r mp_bin.zip $MPBINDIR && mv mp_bin.zip mp_bin.pk3
}
popd
