# Flamingo Documentation

![Logo](assets/flamingo-icon-b.png)


## What is Flamingo

Flamingo is a performant open source framework based on Go. 
Its clean and scalable architecture is designed to build custom, fast and flexible applications.
It is used to build scalable and maintainable (web)applications.

Flamingo is:

* open source and written in go
* easy to learn
* provides high flexible and best practices

Go as simple, powerful and typesafe language is great to implement and scale serverside logic.
Some highlights of the Flamingo framework are:

* Modularization: A Module concept for building modular and pluggable applications
* Powerful Dependency Injection
* Authentication and Security Concepts
* Operational Readiness "out of the box": Logging, (distributed) Tracing, Metrics and Healthchecks with seperate endpoint
* Different Templating Engines
* Configuration concepts using yml and cue and support for multiple areas and contexts
* Flexible routing with support for prefix routes and reverse routing
* Web Controller Support with: Request / Response / Form Handling etc
* Localisation
* Commands
* Sessionhandling and Management
* A lot of available additional modules - for example:
    * GraphQL support and therefore support to build nice SPA and PWAs on top of it
    * Resilience and Caching for external APIs calls.
    * gRPC integration
    * Form handling and validation

Flamingo itself does not contain ORM Mapper or libraries - instead it emphasizes "ports and adapters" architecture - so that you have a technology free (domain) model and any possible (and replaceable) persitence behind it.
That makes Flamingo useful to build microservices and applications - especially to build "frontends" or portals that require interaction with other (micro) services in a distributed architecture. 
When sticking to the architectural recommendation you can build modular applications with replaceable adapters that gives you independed testability.

With **"Flamingo Commerce"** there is an additional active projects that offer rich and flexible features to build modern e-commerce applications.


# The "I Love Flamingo" Ecosystem

The Flamingo ecosystem consists of the following main projects:

* *Flamingo*: This is the go based (micro)framework with all core and framework modules. [code on github](https://github.com/i-love-flamingo/flamingo)

* *Flamingo Commerce*: Providing powerful e-commerce features, that you can use to build flexible and modern e-commerce applications [code on github](https://github.com/i-love-flamingo/flamingo-commerce)

Related to this projects you find a couple of training materials and examples:

* *hello-flamingo*: A using only flamingo and gotemplates. [code on github](https://github.com/i-love-flamingo/example-helloworld)
* *commerce-demo-carotene*: A standard demo shop using "Flamingo Commerce" and standalone adapters [code on github](https://github.com/i-love-flamingo/commerce-demo-carotene)

Also there is a constantly growing amount of Flamingo modules that can be used as lib, some of them are maintained under the core project like:

* *dingo* Go Dependency Injection Framework, used for Flamingo modules as basis. [dingo on github](https://github.com/i-love-flamingo/dingo)
* *form* Module that provided concepts to deal with web forms (parsing to data transfer objects, validating etc..) [code on github](https://github.com/i-love-flamingo/form)
* *pugtemplate* Module that implements a flamingo templateengine that works together with the parsed pug templates by Flamingo Carotene. This is the Flamingo module that you need if you want to use Flamingo Carotene based templates. [code on github](https://github.com/i-love-flamingo/pugtemplate)

## Flamingo Commerce

Flamingo Commerce consists of several Flamingo modules, that provide powerful e-commerce features, which you can use to build flexible and modern e-commerce applications.

Flamingo Commerce uses "Domain Driven Design" with a "technology free" domain model by using the layering approach "Ports and Adapters" for its modules.
The different modules provide „domain“, „application“ and „interface“ logic around commerce features.

According to „ports and adapters“ these modules can be used with your own „adapters“ to interact with any API or microservice you want.

[documentation for Flamingo Commerce](https://docs.flamingo.me/4.%20Flamingo%20Commerce/1.%20Introduction/1.%20About.html) 


# Getting started:

You may want to start reading in the docs:

* [Getting Started](1. Introduction/1. Getting Started.md)
* [Tutorial Hello World](1. Introduction/2. Tutorial Hello World.md)

# External Links:

* [www.flamingo.me](http://www.flamingo.me)
* [docs.flamingo.me](http://docs.flamingo.me)
* [demoshop.flamingo.me](https://demoshop.flamingo.me)

