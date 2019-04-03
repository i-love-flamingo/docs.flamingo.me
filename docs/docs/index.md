# Flamingo Documentation

![Logo](assets/flamingo-icon-b.png)


## What is Flamingo

Flamingo is a go based framework for pluggable web projects.
It is used to build scalable and maintainable web-applications.

Flamingo is:

* open source
* written in go
* easy to learn
* fast and flexible

Go as simple, powerful and typesafe language is great to implement and scale serverside logic.
Flamingo has a clean architecture with clean and clear dependencies in mind.

It's architecture is especially useful to build "frontends" for your headless microservice architecture.

With "Flamingo Carotene" and "Flamingo Commerce" you get your toolkit for building **blazing fast commerce experience layers**


# The "I Love Flamingo" Ecosystem

The Flamingo ecosystem consists of the following main projects:

* *Flamingo*: This is the go based (micro)framework with all core and framework modules. [code on github](https://github.com/i-love-flamingo/flamingo)
* *Flamingo Carotene*: Npm modules that provide a frontend build pipeline for your projects - featuring tools like pug, Sass, webpack and atomic design pattern. [code on github](https://github.com/i-love-flamingo/flamingo-carotene)
* *Flamingo Commerce*: Providing powerful e-commerce features, that you can use to build flexible and modern e-commerce applications [code on github](https://github.com/i-love-flamingo/flamingo-commerce)

Related to this projects you find a couple of training materials and examples:
* *hello-flamingo*: A minimalistic example project using only flamingo and gotemplates. [code on github](https://github.com/i-love-flamingo/hello-flamingo)
* *commerce-demo-carotene*: A standard demo shop using "Flamingo Commerce" and standalone adapters [code on github](https://github.com/i-love-flamingo/commerce-demo-carotene)

Also there is a constantly growing amount of Flamingo modules that can be used as lib, some of them are maintained under the core project like:
* *dingo* Go Dependency Injection Framework, used for Flamingo modules as basis. [code on github](https://github.com/i-love-flamingo/dingo)
* *form* Module that provided concepts to deal with web forms (parsing to data transfer objects, validating etc..) [code on github](https://github.com/i-love-flamingo/form)
* *pugtemplate* Module that implements a flamingo templateengine that works together with the parsed pug templates by Flamingo Carotene. This is the Flamingo module that you need if you want to use Flamingo Carotene based templates. [code on github](https://github.com/i-love-flamingo/pugtemplate)
 

## Flamingo Carotene
Flamingo-Carotene is an easy to use frontend (-tooling) for projects build with the Flamingo framework.
It offers the frontend build pipeline using tools like pug, sass, webpack and atomic design pattern.
It can be used to implement modern and flexible - component based templates for your web applications.

[documentation for Flaming Carotene](2. Flamingo Carotene/1. Flamingo Carotene Basics/01-Introduction.md)

## Flamingo Commerce

Flamingo Commerce consists of several Flamingo modules, that provide powerful e-commerce features, which you can use to build flexible and modern e-commerce applications.

Flamingo Commerce uses "Domain Driven Design" with a "technology free" domain model by using the layering approach "Ports and Adapters" for its modules.
The different modules provide „domain“, „application“ and „interface“ logic around commerce features.

According to „ports and adapters“ these modules can be used with your own „adapters“ to interact with any API or microservice you want.

[documentation for Flaming Commerce](3. Flamingo Commerce/1. Introduction/About Flamingo Commerce.md)


# Getting started

You may want to start reading in the docs:

* [Getting Started](0. Introduction/1. Getting Started.md)
* [Tutorial Hello World](0. Introduction/2. Tutorial Hello World.md)
* [Flamingo Feature Overview](1. Flamingo/1. Flamingo Basics/1. Flamingo Feature Overview.md)

# External Links:
* [www.flamingo.me](http://www.flamingo.me)
* [docs.flamingo.me](http://docs.flamingo.me)
* [godoc.flamingo.me](http://godoc.flamingo.me)
