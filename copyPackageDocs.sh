#!/bin/bash


cp "workspace/flamingo/docs/0. Introductions/1. Getting Started.md" "workspace/docs/docs/0. Introduction/"
cp -R "workspace/flamingo/docs/1. Flamingo Basics" "workspace/docs/docs/1. Flamingo/"
cp -R -L "workspace/flamingo/docs/2. Framework Modules" "workspace/docs/docs/1. Flamingo/"
cp -R -L "workspace/flamingo/docs/3. Core Modules" "workspace/docs/docs/1. Flamingo/"
cp -R "workspace/flamingo/docs/4. Others" "workspace/docs/docs/1. Flamingo/"

