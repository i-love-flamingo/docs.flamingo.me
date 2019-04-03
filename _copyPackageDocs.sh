#!/bin/bash

# From flamingo
cp "workspace/flamingo/docs/0. Introduction/1. Getting Started.md" "workspace/docs/docs/0. Introduction/"
cp -R "workspace/flamingo/docs/1. Flamingo Basics" "workspace/docs/docs/1. Flamingo/"
cp -R -L "workspace/flamingo/docs/2. Framework Modules" "workspace/docs/docs/1. Flamingo/"
cp -R -L "workspace/flamingo/docs/3. Core Modules" "workspace/docs/docs/1. Flamingo/"
cp -R "workspace/flamingo/docs/4. Others" "workspace/docs/docs/1. Flamingo/"

# From flamingo-commerce:
cp -R -L "workspace/flamingo-commerce/docs/1. Introduction" "workspace/docs/docs/3. Flamingo Commerce/"
cp -R -L "workspace/flamingo-commerce/docs/2. Flamingo Commerce Modules" "workspace/docs/docs/3. Flamingo Commerce/"

# From example-helloworld
cp "workspace/example-helloworld/Readme.md" "workspace/docs/docs/0. Introduction/2. Tutorial Hello World.md"

# From Carotene
cp -R -L "workspace/flamingo-carotene/docs/basics" "workspace/docs/docs/2. Flamingo Carotene/1. Basics/"
cp -R -L "workspace/flamingo-carotene/docs/modules" "workspace/docs/docs/2. Flamingo Carotene/2. Modules/"
