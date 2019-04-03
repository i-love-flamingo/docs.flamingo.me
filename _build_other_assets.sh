#!/bin/bash

# Supposed to run as last build step

cd workspace
mkdir -p docs/site/examples/

echo "*****Build the example project HELLOWORLD"
cd example-helloworld
git pull --all
cd ..
zip -r example-helloworld.zip example-helloworld
cp example-helloworld.zip docs/site/examples/



echo "*****Build the example project FLAMINGO CAROTENE HELLO WORLD"

cd example-hello-flamingo-carotene
git pull --all
make frontend-build
cd ..
zip -r example-hello-flamingo-carotene.zip example-hello-flamingo-carotene

cp example-hello-flamingo-carotene.zip docs/site/examples/



echo "*****Build the example project FLAMINGO OPENWEATHER"

cd example-openweather
git fetch --all
git checkout step4
cd frontend
docker run --rm -w "/tmp" -v yarn:/yarn -e YARN_CACHE_FOLDER=/yarn -v ${PWD}:/tmp aoepeople/carotene-env:1.7.0  "yarn"
cd ../..
zip -r example-openweather.zip example-openweather

cp example-openweather.zip docs/site/examples/
