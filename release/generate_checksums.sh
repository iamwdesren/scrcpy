#!/bin/bash
set -ex
cd "$(dirname ${BASH_SOURCE[0]})"
. build_common

cd "$OUTPUT_DIR"
sha256sum "scrcpy-server-$VERSION" \
    "scrcpy-linux-$VERSION.tar.gz" \
    "scrcpy-win32-$VERSION.zip" \
    "scrcpy-win64-$VERSION.zip" \
    "scrcpy-macos-intel-$VERSION.tar.gz" \
    "scrcpy-macos-aarch64-$VERSION.tar.gz" \
        | tee SHA256SUMS.txt
echo "Release checksums generated in $PWD/SHA256SUMS.txt"
