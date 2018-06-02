#!/bin/bash

echo "*****Update Build Container..."
echo "******************************"
docker pull squidfunk/mkdocs-material

echo "*****Prepare Docs..."
echo "******************************"
./prepare-build.sh

echo "*****Build Docs..."
echo "******************************"
cd workspace/docs
docker run -v `pwd`:/docs --rm squidfunk/mkdocs-material build
cd ../../

echo "*****Copy result"
cp -R workspace/docs/site/* result/


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