#!/usr/bin/env bash

# Install dependentices by:
# npm install -g fantasticon

rm -rf build
mkdir build
fantasticon src \
	--font-types woff2 woff ttf \
	--asset-types css html json \
	--name FGI-icons \
	--font-height 1000 \
	--descent 0 \
	--output build

build_id=$(date +%s)
sed "s/__CACHE_HINT_PLACEHOLDER__/hc=uquery\&t=${build_id}/g" icon.css.in > build/icon.css
