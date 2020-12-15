#!/bin/bash
_versions=$(curl -X GET https://github.com/deemru/chromium-gost/releases/latest | cut -d "\"" -f2 | rev | cut -d '/' -f1 | rev)
vers="${_versions[*]}"
echo "${vers}"
sed -E -i "/pkgver=/c pkgver=${vers}" PKGBUILD
