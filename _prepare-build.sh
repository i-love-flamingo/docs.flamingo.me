#!/bin/bash


echo "*****Cleanup Workspace..."
rm -rf workspace
mkdir -p workspace

echo "*****Copy all local docs in workspace folder"
cp -R docs workspace/

echo "*****Clone flamingo"
git clone git@github.com:i-love-flamingo/flamingo.git workspace/flamingo

cp "workspace/flamingo/docs/0. Introduction/1. Getting Started.md" "workspace/docs/docs/1. Introduction/"
cp -R "workspace/flamingo/docs/1. Flamingo Basics" "workspace/docs/docs/2. Flamingo Core/"
cp -R -L "workspace/flamingo/docs/2. Framework Modules" "workspace/docs/docs/2. Flamingo Core/"
cp -R -L "workspace/flamingo/docs/3. Core Modules" "workspace/docs/docs/2. Flamingo Core/"
cp -R "workspace/flamingo/docs/4. Others" "workspace/docs/docs/2. Flamingo Core/"


echo "*****Clone flamingo modules that are not bundled in flamingo-framework"
git clone git@github.com:i-love-flamingo/dingo.git workspace/dingo
cp workspace/dingo/Readme.md "workspace/docs/docs/3. Flamingo Modules/1. dingo.md"

git clone git@github.com:i-love-flamingo/form.git workspace/form
cp workspace/form/Readme.md "workspace/docs/docs/3. Flamingo Modules/2. form.md"

git clone git@github.com:i-love-flamingo/csrf.git workspace/csrf
cp workspace/csrf/Readme.md "workspace/docs/docs/3. Flamingo Modules/csrf.md"

#git clone git@gitlab.aoe.com:shared/i-love-flamingo/redirects.git workspace/redirects
#cp workspace/redirects/Readme.md "workspace/docs/docs/3. Flamingo Modules/redirects.md"

git clone git@github.com:i-love-flamingo/pugtemplate.git workspace/pugtemplate
cp workspace/pugtemplate/Readme.md "workspace/docs/docs/3. Flamingo Modules/3. pugtemplate.md"

#git clone git@gitlab.aoe.com:shared/i-love-flamingo/httpresilience.git workspace/httpresilience
#cp workspace/httpresilience/Readme.md "workspace/docs/docs/3. Flamingo Modules/httpresilience.md"

#git clone git@gitlab.aoe.com:shared/i-love-flamingo/captcha.git workspace/captcha
#cp workspace/captcha/Readme.md "workspace/docs/docs/3. Flamingo Modules/captcha.md"

#git clone git@gitlab.aoe.com:shared/i-love-flamingo/csp.git workspace/csp
#cp workspace/csp/Readme.md "workspace/docs/docs/3. Flamingo Modules/csp.md"


echo "*****Clone example/training projects - to add them also in documentation"

git clone git@github.com:i-love-flamingo/example-helloworld.git workspace/example-helloworld
cp "workspace/example-helloworld/Readme.md" "workspace/docs/docs/1. Introduction/2. Tutorial Hello World.md"
cp "workspace/example-helloworld/Readme.md" "workspace/docs/docs/6. Trainings/1. Tutorial Hello World.md"

git clone git@github.com:i-love-flamingo/example-openweather.git workspace/example-openweather
cp "workspace/example-openweather/Readme.md" "workspace/docs/docs/6. Trainings/2. Tutorial Openweather.md"




echo "*****Clone flamingo commerce stuff"
git clone git@github.com:i-love-flamingo/flamingo-commerce.git workspace/flamingo-commerce
cp -R -L "workspace/flamingo-commerce/docs/1. Introduction" "workspace/docs/docs/4. Flamingo Commerce/"
cp -R -L "workspace/flamingo-commerce/docs/2. Flamingo Commerce Modules" "workspace/docs/docs/4. Flamingo Commerce/"

git clone git@github.com:i-love-flamingo/flamingo-commerce-adapter-standalone.git workspace/flamingo-commerce-adapter-standalone
mkdir -p "workspace/docs/docs/4. Flamingo Commerce/3. Adapter/1. Standalone"
mkdir -p "workspace/docs/docs/4. Flamingo Commerce/3. Adapter/1. Standalone/csvcommerce"
mkdir -p "workspace/docs/docs/4. Flamingo Commerce/3. Adapter/1. Standalone/productsearch"
cp "workspace/flamingo-commerce-adapter-standalone/Readme.md" "workspace/docs/docs/4. Flamingo Commerce/3. Adapter/1. Standalone/"
cp -R  "workspace/flamingo-commerce-adapter-standalone/csvcommerce/Readme.md" "workspace/docs/docs/4. Flamingo Commerce/3. Adapter/1. Standalone/csvcommerce/"
cp -R  "workspace/flamingo-commerce-adapter-standalone/productsearch/Readme.md" "workspace/docs/docs/4. Flamingo Commerce/3. Adapter/1. Standalone/productsearch/"



############# TEMPLATE ENGINES
echo "*****Clone flamingo templating - pug and carotene"
git clone git@github.com:i-love-flamingo/flamingo-carotene.git workspace/flamingo-carotene

cp -R -L "workspace/flamingo-carotene/docs/basics" "workspace/docs/docs/5. Template Engine Flamingo Carotene/1. Introduction"
cp -R -L "workspace/flamingo-carotene/docs/modules" "workspace/docs/docs/5. Template Engine Flamingo Carotene/2. Modules"
#cp -R -L "workspace/flamingo-carotene/docs/3. Others" "workspace/docs/docs/4. Template Engine Flamingo Carotene/"


git clone git@github.com:i-love-flamingo/example-flamingo-carotene.git workspace/example-flamingo-carotene
cp "workspace/example-flamingo-carotene/Readme.md" "workspace/docs/docs/5. Template Engine Flamingo Carotene/1. Introduction/2. Tutorial Flamingo Carotene.md"
cp "workspace/example-flamingo-carotene/Readme.md" "workspace/docs/docs/6. Trainings/2. Tutorial Flamingo Carotene.md"


## google tracking
cp docs/google08f27145a183daa3.html workspace/docs/site/


cd workspace/docs
cd ../..



echo "*****Ready :-)"