#!/bin/bash -x

BUILDIMAGE=squidfunk/mkdocs-material:9.4.14

echo "*****Prepare Docs inside workspace folder."
echo "******************************"
./_prepare-build.sh

echo "*****run build mkdocs..."
echo "******************************"
docker pull ${BUILDIMAGE}
cd workspace_new/docs
docker run --rm --user "$(id -u):$(id -g)" -v "$(pwd)":/docs ${BUILDIMAGE} build
cd ../../


echo "*****Build Other assets / Training Materials"
echo "******************************"
#./_build_other_assets.sh

echo "*****Move tmp workspace to real..."
rm -rf workspace
mv workspace_new workspace

echo "DONE :-)"

echo "now open workspace/docs/site/index.html"
# open workspace/docs/site/index.html

