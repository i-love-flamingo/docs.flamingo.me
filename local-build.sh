#!/bin/bash

BUILDIMAGE=squidfunk/mkdocs-material:latest


echo "*****Update Build Container..."
echo "******************************"
docker pull ${BUILDIMAGE}

echo "*****Prepare Docs inside workspace folder."
echo "******************************"
./prepare-build.sh

echo "*****run build mkdocs..."
echo "******************************"
cd workspace/docs
docker run --rm -it -v ${PWD}:/docs ${BUILDIMAGE} build
#docker run -v `pwd`:/mkdocs --rm ${BUILDIMAGE} /mkdocs/build.sh
cd ../../


#echo "*****Build Carotene CLI Doc site"
#echo "******************************"
#cd workspace
#git clone git@gitlab.aoe.com:shared/flamingo/carotene-cli.git
#cd carotene-cli/docs
#docker run -v `pwd`:/mkdocs --rm ${BUILDIMAGE} mkdocs build -f mkdocs.yml
#cd ../../../
#cp -R workspace/carotene-cli/docs/site site/documentations/carotene-cli


#echo "*****Build Training Materials"
#echo "******************************"
#cd workspace
#git clone git@gitlab.aoe.com:shared/flamingo/training-slides.git
#cd ..
#cp workspace/training-slides/flamingo.pdf site/documentations/training.pdf

#cd workspace
#git clone git@gitlab.aoe.com:shared/flamingo/training.git
#