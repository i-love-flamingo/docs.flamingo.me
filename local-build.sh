#!/bin/bash

BUILDIMAGE=squidfunk/mkdocs-material:latest



echo "*****Prepare Docs inside workspace folder."
echo "******************************"
./_prepare-build.sh

echo "*****run build mkdocs..."
echo "******************************"
docker pull ${BUILDIMAGE}
cd workspace/docs
docker run --rm -v ${PWD}:/docs ${BUILDIMAGE} build
cd ../../


echo "*****Build Other assets / Training Materials"
echo "******************************"
#./_build_other_assets.sh

echo "DONE :-)"

echo "now open workspace/docs/site/index.html"
# open workspace/docs/site/index.html

