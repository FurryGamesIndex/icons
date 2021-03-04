#!/usr/bin/env bash

# Install dependentices by:
# npm install -g fantasticon

rm -rf build
mkdir build
fantasticon src \
	--font-types woff2 woff ttf \
	--asset-types css html json \
	--name FGI-icons \
	--normalize \
	--font-height 100 \
	--descent 13 \
	--output build

build_id=$(date +%s)
sed "s/__CACHE_HINT_PLACEHOLDER__/hc=uquery\&t=${build_id}/g" icon.css.in > build/icon.css
