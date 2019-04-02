#!/bin/bash


echo "*****Cleanup Workspace..."
rm -rf workspace
mkdir -p workspace

echo "*****Copy all local docs in workspace folder"
cp -R docs workspace/

echo "*****Clone flamingo and flamingo commerce"
git clone git@gitlab.aoe.com:shared/i-love-flamingo/flamingo.git workspace/flamingo
git clone git@gitlab.aoe.com:shared/i-love-flamingo/flamingo-commerce.git workspace/flamingo-commerce
git clone git@gitlab.aoe.com:shared/i-love-flamingo/flamingo-commerce-adapter-standalone.git workspace/flamingo-commerce-adapter-standalone
git clone https://github.com/i-love-flamingo/flamingo-carotene.git workspace/flamingo-carotene

echo "*****Clone example/training projects - to add them also in documentation"
git clone git@gitlab.aoe.com:shared/i-love-flamingo/example-helloworld.git workspace/example-helloworld
git clone git@gitlab.aoe.com:shared/i-love-flamingo/example-hello-flamingo-carotene.git workspace/example-hello-flamingo-carotene
git clone git@gitlab.aoe.com:shared/i-love-flamingo/example-openweather.git workspace/example-openweather


echo "*****Copy package readmes to workspace"
./_copyPackageDocs.sh

echo "*****Compiling documentation"
cd workspace/docs
cd ../..

