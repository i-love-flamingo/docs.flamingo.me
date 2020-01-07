#!/bin/bash


cd /mkdocs || exit

pip install mkdocs-material

echo "Building site"
mkdocs build -f mkdocs.yml

