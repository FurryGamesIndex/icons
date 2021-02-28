#!/usr/bin/env bash

# Install dependentices by:
# npm install -g fantasticon

rm -rf build
mkdir build
fantasticon src \
	--font-types eot woff2 woff ttf \
	--asset-types css html json \
	--name FGI-icons \
	--normalize \
	--output build
