#!/bin/bash


cd /mkdocs || exit

pip install mkdocs-material

echo "Building site"
mkdocs build -f mkdocs.yml

# Do a big and evil chown as we are inside a container here
#chmod -R 777 /mkdocs
