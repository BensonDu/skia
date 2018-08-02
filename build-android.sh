#!/bin/bash

./tools/git-sync-deps
./bin/gn gen out/Static --args='is_official_build=true skia_use_system_icu=false skia_use_system_libjpeg_turbo=false skia_use_system_libpng=false skia_use_system_libwebp=false skia_use_system_zlib=false'
ninja -C out/Static
