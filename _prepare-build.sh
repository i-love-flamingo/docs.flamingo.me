#!/bin/bash


echo "*****Cleanup Workspace..."
rm -rf workspace
mkdir -p workspace

echo "*****Copy all local docs in workspace folder"
cp -R docs workspace/

echo "*****Clone flamingo and flamingo commerce"
git clone -b "13-restructure-cleanup-documentation" git@gitlab.aoe.com:shared/i-love-flamingo/flamingo.git workspace/flamingo
git clone git@gitlab.aoe.com:shared/i-love-flamingo/flamingo-commerce.git workspace/flamingo-commerce
git clone git@gitlab.aoe.com:shared/i-love-flamingo/example-helloworld.git workspace/example-helloworld

echo "*****Copy package readmes to workspace"
./_copyPackageDocs.sh
echo "*****Compiling documentation"
cd workspace/docs
cd ../..

