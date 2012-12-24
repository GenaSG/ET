#!/bin/bash
BUILD_DIR=./build
FILES_TO_COMPRESS=""
set -x
pushd $BUILD_DIR;{
echo `pwd`
[ -e ./cgame_mac.bundle ] && zip -9 -r cgame_mac.zip ./cgame_mac.bundle && mv cgame_mac.zip cgame_mac && FILES_TO_COMPRESS=$FILES_TO_COMPRESS" cgame_mac"
[ -e ./qagame_mac.bundle ] && zip -9 -r qagame_mac.zip ./qagame_mac.bundle && mv qagame_mac.zip qagame_mac && FILES_TO_COMPRESS=$FILES_TO_COMPRESS" qagame_mac"
[ -e ./ui_mac.bundle ] && zip -9 -r ui_mac.zip ./ui_mac.bundle && mv ui_mac.zip ui_mac && FILES_TO_COMPRESS=$FILES_TO_COMPRESS" ui_mac"
zip -9 -r mp_bin.zip $FILES_TO_COMPRESS && mv mp_bin.zip mp_bin.pk3
}
popd
