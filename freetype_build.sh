#!/bin/bash

set -e

output_dir="output"
min_iphoneos="7.0"
AR_POS="/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/ar"
CC_POS="/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang"

green='\033[38;5;82m'
ngreen='\033[0m'
info='\033[38;5;2m'
ninfo='\033[0m'

export CC=$CC_POS

ARCH="arm64"
export CFLAGS="-arch $ARCH -pipe -mdynamic-no-pic -Wno-trigraphs -fpascal-strings -O2 -Wreturn-type -Wunused-variable -fmessage-length=0 -fvisibility=hidden -miphoneos-version-min=$min_iphoneos -I/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS.sdk/usr/include/libxml2 -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS.sdk"
export AR="${AR_POS}"
export LDFLAGS="-arch $ARCH -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS.sdk -miphoneos-version-min=$min_iphoneos"
./configure --host="aarch64-apple-darwin" --enable-static=yes --enable-shared=no --without-zlib --with-png=no --with-harfbuzz=no
make clean
make
mkdir -p $output_dir && cp objs/.libs/libfreetype.a "$output_dir/libfreetype-${ARCH}.a"
S0="$ARCH"

echo -e "freetype arm64e"
ARCH="arm64e"
export CFLAGS="-arch $ARCH -pipe -mdynamic-no-pic -Wno-trigraphs -fpascal-strings -O2 -Wreturn-type -Wunused-variable -fmessage-length=0 -fvisibility=hidden -miphoneos-version-min=$min_iphoneos -I/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS.sdk/usr/include/libxml2 -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS.sdk"
export AR="${AR_POS}"
export LDFLAGS="-arch $ARCH -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS.sdk -miphoneos-version-min=$min_iphoneos"
./configure --host="aarch64-apple-darwin" --enable-static=yes --enable-shared=no --without-zlib --with-png=no --with-harfbuzz=no
make clean
make
mkdir -p $output_dir && cp objs/.libs/libfreetype.a "$output_dir/libfreetype-${ARCH}.a"
S0="$ARCH"

echo -e "freetype armv7"
ARCH="armv7"
export CFLAGS="-arch $ARCH -pipe -mdynamic-no-pic -Wno-trigraphs -fpascal-strings -O2 -Wreturn-type -Wunused-variable -fmessage-length=0 -fvisibility=hidden -miphoneos-version-min=$min_iphoneos -I/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS.sdk/usr/include/libxml2 -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS.sdk"
export AR="${AR_POS}"
export LDFLAGS="-arch $ARCH -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS.sdk -miphoneos-version-min=$min_iphoneos"
./configure --host="${ARCH}-apple-darwin" --enable-static=yes --enable-shared=no --without-zlib --with-png=no --with-harfbuzz=no
make clean
make
mkdir -p $output_dir && cp objs/.libs/libfreetype.a "$output_dir/libfreetype-${ARCH}.a"
S0="$ARCH"

echo -e "freetype armv7s"
ARCH="armv7s"
export CFLAGS="-arch $ARCH -pipe -mdynamic-no-pic -Wno-trigraphs -fpascal-strings -O2 -Wreturn-type -Wunused-variable -fmessage-length=0 -fvisibility=hidden -miphoneos-version-min=$min_iphoneos -I/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS.sdk/usr/include/libxml2 -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS.sdk"
export AR="${AR_POS}"
export LDFLAGS="-arch $ARCH -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS.sdk -miphoneos-version-min=$min_iphoneos"
./configure --host="${ARCH}-apple-darwin" --enable-static=yes --enable-shared=no --without-zlib --with-png=no --with-harfbuzz=no
make clean
make
mkdir -p $output_dir && cp objs/.libs/libfreetype.a "$output_dir/libfreetype-${ARCH}.a"
S0="$ARCH"

echo -e "freetype i386"
ARCH="i386"
export CFLAGS="-arch ${ARCH} -pipe  -Wno-trigraphs -fpascal-strings -O2 -Wreturn-type -Wunused-variable -fmessage-length=0 -fvisibility=hidden -miphoneos-version-min=$min_iphoneos -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator.sdk"
export LDFLAGS="-arch ${ARCH} -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator.sdk -miphoneos-version-min=$min_iphoneos"
./configure --disable-shared --enable-static --host="${ARCH}-apple-darwin"  --without-zlib --with-png=no --with-harfbuzz=no
make clean
make
mkdir -p $output_dir && cp objs/.libs/libfreetype.a "$output_dir/libfreetype-${ARCH}.a"
S0="$ARCH"

echo -e "freetype x86_64"
ARCH="x86_64"
export CFLAGS="-arch ${ARCH} -pipe  -Wno-trigraphs -fpascal-strings -O2 -Wreturn-type -Wunused-variable -fmessage-length=0 -fvisibility=hidden -miphoneos-version-min=$min_iphoneos -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator.sdk"
export LDFLAGS="-arch ${ARCH} -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator.sdk -miphoneos-version-min=$min_iphoneos"
./configure --disable-shared --enable-static --host="${ARCH}-apple-darwin"  --without-zlib --with-png=no --with-harfbuzz=no
make clean
make
mkdir -p $output_dir && cp objs/.libs/libfreetype.a "$output_dir/libfreetype-${ARCH}.a"
S3="$ARCH"

echo -e "\n $green Success: $S0 $S3 $ngreen"

lipo -create "$output_dir/libfreetype-arm64.a" "$output_dir/libfreetype-arm64e.a" "$output_dir/libfreetype-armv7.a" "$output_dir/libfreetype-armv7s.a" "$output_dir/libfreetype-i386.a" "$output_dir/libfreetype-x86_64.a" -output "$output_dir/libfreetype.a"
lipolog="$(lipo -info $output_dir/libfreetype.a)"

echo -e "\n $info $lipolog $ninfo"
echo -e "\n $green Completed! $ngreen"
