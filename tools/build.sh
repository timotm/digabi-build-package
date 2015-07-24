#!/bin/sh
set -ex

cd "$1"

echo "I: Installing build-dependencies..."
mk-build-deps -i -r --tool="apt-get --no-install-recommends -y"

echo "I: Building the package..."
dpkg-buildpackage -us -uc