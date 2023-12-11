#!/bin/bash


echo "*****Cleanup tmp Workspace..."
rm -rf workspace_new
mkdir -p workspace_new

echo "*****Copy all local docs in workspace_new folder"
cp -R docs workspace_new/

echo "*****Clone flamingo"
git clone https://github.com/i-love-flamingo/flamingo.git workspace_new/flamingo

cp "workspace_new/flamingo/docs/0. Introduction/1. Getting Started.md" "workspace_new/docs/docs/1. Introduction/"
cp -R "workspace_new/flamingo/docs/1. Flamingo Basics" "workspace_new/docs/docs/2. Flamingo Core/"
cp -R -L "workspace_new/flamingo/docs/2. Framework Modules" "workspace_new/docs/docs/2. Flamingo Core/"
cp -R -L "workspace_new/flamingo/docs/3. Core Modules" "workspace_new/docs/docs/2. Flamingo Core/"
cp -R "workspace_new/flamingo/docs/4. Others" "workspace_new/docs/docs/2. Flamingo Core/"


echo "*****Clone flamingo modules that are not bundled in flamingo-framework"
git clone https://github.com/i-love-flamingo/dingo.git workspace_new/dingo
cp workspace_new/dingo/Readme.md "workspace_new/docs/docs/3. Flamingo Modules/1. dingo.md"

git clone https://github.com/i-love-flamingo/form.git workspace_new/form
cp workspace_new/form/Readme.md "workspace_new/docs/docs/3. Flamingo Modules/2. form.md"

git clone https://github.com/i-love-flamingo/csrf.git workspace_new/csrf
cp workspace_new/csrf/Readme.md "workspace_new/docs/docs/3. Flamingo Modules/csrf.md"

git clone https://github.com/i-love-flamingo/graphql.git workspace_new/graphql
cp workspace_new/graphql/Readme.md "workspace_new/docs/docs/3. Flamingo Modules/graphql.md"

git clone https://github.com/i-love-flamingo/pugtemplate.git workspace_new/pugtemplate
cp workspace_new/pugtemplate/Readme.md "workspace_new/docs/docs/3. Flamingo Modules/3. pugtemplate.md"

git clone https://github.com/i-love-flamingo/opentelemetry.git workspace_new/opentelemetry
cp workspace_new/opentelemetry/Readme.md "workspace_new/docs/docs/3. Flamingo Modules/opentelemetry.md"

# Modules that we might publish later:
##########

#git clone https://github.com/i-love-flamingo/httpresilience.git workspace_new/httpresilience
#cp workspace_new/httpresilience/Readme.md "workspace_new/docs/docs/3. Flamingo Modules/httpresilience.md"

#git clone https://github.com/i-love-flamingo/captcha.git workspace_new/captcha
#cp workspace_new/captcha/Readme.md "workspace_new/docs/docs/3. Flamingo Modules/captcha.md"

#git clone https://github.com/i-love-flamingo//csp.git workspace_new/csp
#cp workspace_new/csp/Readme.md "workspace_new/docs/docs/3. Flamingo Modules/csp.md"


echo "*****Clone example/training projects - to add them also in documentation"
git clone https://github.com/i-love-flamingo/example-helloworld.git workspace_new/example-helloworld
cp "workspace_new/example-helloworld/Readme.md" "workspace_new/docs/docs/1. Introduction/2. Tutorial Hello World.md"
cp "workspace_new/example-helloworld/Readme.md" "workspace_new/docs/docs/6. Trainings/1. Tutorial Hello World.md"
cp -R "workspace_new/example-helloworld/docs" "workspace_new/docs/docs/1. Introduction/"
mkdir -p "workspace_new/docs/docs/6. Trainings/docs/"
cp -R "workspace_new/example-helloworld/docs" "workspace_new/docs/docs/6. Trainings/"

git clone https://github.com/i-love-flamingo/example-openweather.git workspace_new/example-openweather
cp "workspace_new/example-openweather/Readme.md" "workspace_new/docs/docs/6. Trainings/2. Tutorial Openweather.md"


echo "*****Clone flamingo commerce stuff"
git clone https://github.com/i-love-flamingo/flamingo-commerce.git workspace_new/flamingo-commerce
cp -R -L "workspace_new/flamingo-commerce/docs/1. Introduction" "workspace_new/docs/docs/4. Flamingo Commerce/"
cp -R -L "workspace_new/flamingo-commerce/docs/2. Flamingo Commerce Modules" "workspace_new/docs/docs/4. Flamingo Commerce/"
mkdir -p "workspace_new/docs/docs/4. Flamingo Commerce/2. Flamingo Commerce Modules/interfaces/graphql"
cp "workspace_new/flamingo-commerce/cart/interfaces/graphql/schema.graphql" "workspace_new/docs/docs/4. Flamingo Commerce/2. Flamingo Commerce Modules/interfaces/graphql"
mkdir -p "workspace_new/docs/docs/4. Flamingo Commerce/2. Flamingo Commerce Modules/domain/placeorder/states"
cp workspace_new/flamingo-commerce/checkout/domain/placeorder/states/*.png "workspace_new/docs/docs/4. Flamingo Commerce/2. Flamingo Commerce Modules/domain/placeorder/states/"

git clone https://github.com/i-love-flamingo/flamingo-commerce-adapter-standalone.git workspace_new/flamingo-commerce-adapter-standalone
mkdir -p "workspace_new/docs/docs/4. Flamingo Commerce/3. Adapter/1. Standalone"
cp "workspace_new/flamingo-commerce-adapter-standalone/Readme.md" "workspace_new/docs/docs/4. Flamingo Commerce/3. Adapter/1. Standalone/"
for subdir in commercesearch csvindexing emailplaceorder; do
  mkdir -p "workspace_new/docs/docs/4. Flamingo Commerce/3. Adapter/1. Standalone/$subdir"
  cp "workspace_new/flamingo-commerce-adapter-standalone/$subdir/Readme.md" "workspace_new/docs/docs/4. Flamingo Commerce/3. Adapter/1. Standalone/$subdir/"
done

############# TEMPLATE ENGINES
echo "*****Clone flamingo templating - pug and carotene"
git clone https://github.com/i-love-flamingo/flamingo-carotene.git workspace_new/flamingo-carotene

cp -R -L "workspace_new/flamingo-carotene/docs/basics" "workspace_new/docs/docs/5. Template Engine Flamingo Carotene/1. Introduction"
cp -R -L "workspace_new/flamingo-carotene/docs/modules" "workspace_new/docs/docs/5. Template Engine Flamingo Carotene/2. Modules"
#cp -R -L "workspace_new/flamingo-carotene/docs/3. Others" "workspace_new/docs/docs/4. Template Engine Flamingo Carotene/"

git clone https://github.com/i-love-flamingo/example-flamingo-carotene.git workspace_new/example-flamingo-carotene
cp "workspace_new/example-flamingo-carotene/Readme.md" "workspace_new/docs/docs/5. Template Engine Flamingo Carotene/1. Introduction/2. Tutorial Flamingo Carotene.md"
mkdir -p "workspace_new/docs/docs/5. Template Engine Flamingo Carotene/1. Introduction/docs"
cp "workspace_new/example-flamingo-carotene/docs/step2_result.png" "workspace_new/docs/docs/5. Template Engine Flamingo Carotene/1. Introduction/docs/"

cp "workspace_new/example-flamingo-carotene/Readme.md" "workspace_new/docs/docs/6. Trainings/2. Tutorial Flamingo Carotene.md"
mkdir -p "workspace_new/docs/docs/6. Trainings/docs"
cp "workspace_new/example-flamingo-carotene/docs/step2_result.png" "workspace_new/docs/docs/6. Trainings/docs/"

## google tracking
mkdir -p workspace_new/docs/site/
cp docs/google08f27145a183daa3.html workspace_new/docs/site/

echo "*****Ready :-)"
