#!/usr/bin/env bash

dpkg-buildpackage -us -uc -S
dpkg-buildpackage -us -uc
lintian ../*.deb
rm -rf debian/.debhelper
rm -rf debian/wannheim
rm -rf debian/files
