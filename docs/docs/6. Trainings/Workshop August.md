# Flamingo Workshop 

## Intro
From 27th to 28th of August there was the first public Flamingo Workshop.

Here we are sharing most of the training material.
You might want to use it to learn and try out things yourself


## Day 1 "Flamingo":
We started with the official Flamingo Hello World example - that you can read up yourself here:
[Hello World Example](https://docs.flamingo.me/6.%20Trainings/1.%20Tutorial%20Hello%20World.html)

After this some of the core concepts and features of Flamingo where discussed. You can find the relevant slides here:
<iframe src="//www.slideshare.net/slideshow/embed_code/key/IYuokUbY4JJprm" width="595" height="485" frameborder="0" marginwidth="0" marginheight="0" scrolling="no" style="border:1px solid #CCC; border-width:1px; margin-bottom:5px; max-width: 100%;" allowfullscreen> </iframe>

[Flamingo Core Concepts Slides](https://de.slideshare.net/i-love-flamingo/flamingo-core-concepts)

The main concepts that have been introduced can also be read up in the documentation:

* [Flamingo Bootstrap](https://docs.flamingo.me/2.%20Flamingo%20Core/1.%20Flamingo%20Basics/7.%20Flamingo%20Bootstrap.html)
* [Dingo - the dependency injection for Flamingo](https://docs.flamingo.me/3.%20Flamingo%20Modules/1.%20dingo.html)
* [The configuration concept](https://docs.flamingo.me/2.%20Flamingo%20Core/2.%20Framework%20Modules/Configuration.html)
* [The routing concept](https://docs.flamingo.me/2.%20Flamingo%20Core/2.%20Framework%20Modules/Web%20module/ReadmeRouter.html)

After this there was an introduction to Flamingo Carotene and we worked on the Flamingo Carotene Example Application. 
Here are the [slides for Flamingo Carotene](https://de.slideshare.net/i-love-flamingo/flamingo-carotene)
and you can work through the examples yourself [Example Flamingo Carotene Project on Github](https://github.com/i-love-flamingo/example-flamingo-carotene)

The next agenda point for this day was Flamingo and GraphQL. 
The slides are available here:
<iframe src="//www.slideshare.net/slideshow/embed_code/key/bxVxm5GZHlylaY" width="595" height="485" frameborder="0" marginwidth="0" marginheight="0" scrolling="no" style="border:1px solid #CCC; border-width:1px; margin-bottom:5px; max-width: 100%;" allowfullscreen> </iframe> 

You can also [read about the GraphQL module in this online documentation](https://docs.flamingo.me/3.%20Flamingo%20Modules/graphql.html)

The day ended with the topic „Flamingo in production“ and introduced the powerful monitoring, tracing and logging concepts build into flamingo. 
The slides are also online (see [Flamingo in production Slides](https://de.slideshare.net/i-love-flamingo/flamingo-in-production)) and the content is available in this online documentation: [Flamingo in production](https://docs.flamingo.me/2.%20Flamingo%20Core/1.%20Flamingo%20Basics/5.%20Flamingo%20Production.html)


## Day 2 "Flamingo Commerce":

The day 2 focused on Flamingo Commerce.

It started with an introduction to Flamingo Commerce: 
<iframe src="//www.slideshare.net/slideshow/embed_code/key/yyTk94hWDVKOE1" width="595" height="485" frameborder="0" marginwidth="0" marginheight="0" scrolling="no" style="border:1px solid #CCC; border-width:1px; margin-bottom:5px; max-width: 100%;" allowfullscreen> </iframe>

[Flamingo Commerce Intro Slides](https://de.slideshare.net/i-love-flamingo/flamingo-commerce-intro)

After this we started the Hands On part and got the Flamingo Commerce Demoshop running for everyone. 
You can try this out yourself as well: 
[Flamingo Commerce Demo on Github](https://github.com/i-love-flamingo/commerce-demo-carotene#run-local-from-source-code)

The next topic was about the software architecture and introduced Ports and Adapters. 
The slides are available here: [Flamingo Commerce Ports and Adapters Slides](https://de.slideshare.net/i-love-flamingo/flamingo-commerce-ports-and-adapters).

You can also read about [Ports and Adapters here](https://docs.flamingo.me/2.%20Flamingo%20Core/1.%20Flamingo%20Basics/4.%20Ports%20and%20Adapters.html)

After this we continued the "hands on" part and coded our own product adapter for the demoshop. 
You can follow this by cloning the branch "productadapter-step1“ in the demoshop repository. 
There you will see the a simple custom adapter to get products. ([Example Adapter on Github](https://github.com/i-love-flamingo/commerce-demo-carotene/blob/productadapter-step1/src/myproduct/infrastructure/product/serviceadapter.go))

After lunch we continued with a deep dive into some of the Flamingo Commerce Modules:
<iframe src="//www.slideshare.net/slideshow/embed_code/key/nFYAZqCLBan56v" width="595" height="485" frameborder="0" marginwidth="0" marginheight="0" scrolling="no" style="border:1px solid #CCC; border-width:1px; margin-bottom:5px; max-width: 100%;" allowfullscreen> </iframe>

[Slides for Flamingo Commerce Modules](https://de.slideshare.net/i-love-flamingo/flamingo-commerce-module-details)

We closed the day with discussions about the status and upcoming ideas for the Magento2 Adapters.



