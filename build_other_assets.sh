#!/bin/bash

# Supposed to run as last build step

echo "*****Clone the example projects"
git clone git@gitlab.aoe.com:shared/i-love-flamingo/example-helloworld.git workspace/example-helloworld
cd workspace/example-helloworld
git pull --all
cd ..
zip example-helloworld.zip example-helloworld
mkdir -p docs/site/examples/
cp example-helloworld.zip docs/site/examples/