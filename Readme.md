# Flamingo Docs

Overall documentation - for docs.flamingo.me

This repository is holding the aggregation logic to collect all documentations in a nice structure - as well as some common documentations.

## About docs.flamingo.me
The site docs.flamingo.me presents a collection of all useful flamingo and flamingo related projects.
The documentation you see there is aggregated from various sources.

## Where do we document

The documentation belongs to the project whenever useful: That means documentation about the framework and the flamingo modules are normaly
located directly in the according repository.

Some documentations that do not have a natural location in another repository are "living" in this repository. (see `docs/docs` folder)

## Documentation Format

We document in Markdown Syntax.
The *table of content* in the mkdocs result is using the H1 Header of the Markdown file as title of the page:
So make sure each Markdown file which is used in this documentation has a useful h1 headline as first line!

## How to contribute

First find where the documentation source is located - you can have a look in the file "_prepare-build.sh" to see the sources and how they are aggregated in the overall documentation.

Then you are welcome to open a Pull Request with your suggested changes or addons to the documentation. Thanks :-)


## Build it local:
Run `./local-build.sh'

