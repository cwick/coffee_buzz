# CoffeeBuzz

CoffeeBuzz is a serious, enterprise-quality software library that implements the [FizzBuzz counting algorithm](http://en.wikipedia.org/wiki/Fizz_buzz)

Inspired by [FizzBuzzEnterpriseEdition](https://github.com/EnterpriseQualityCoding/FizzBuzzEnterpriseEdition), and feeling that many Javascript libraries were not up to the high standards of serious business enterprise companies, I created CoffeeBuzz to set a new standard in software quality on the web. Not only is CoffeeBuzz a direct port of the original FizzBuzzEnterpriseEdition, it also teaches you how to set up an automated build pipeline for developing Javascript/CoffeeScript libraries.

CoffeeBuzz comes with all the features you would expect in enterprise-level, battle-hardened software, including:

* Fully-automated build pipeline that compiles code and compresses into one Javascript file
* Automatically generated API documentation
* Automatic code quality checks
* Unit and integration tests
* During development, all CoffeeScript code is compiled on-the-fly, in the browser, and includes source maps so stack traces and error messages reference the original `.coffee` file.

## Building

1. Install [node.js](http://nodejs.org/)
1. Install CoffeeBuzz dependencies into the local directory: ```npm install```
1. Run Grunt: ```grunt```

## Running

A sample application is included that demonstrates using CoffeeBuzz. To run the app, type `grunt server`, then point your browser to `http://localhost:8000`.

To view the auto-generated documentation, go to `http://localhost:8000/doc`

To run the unit tests, go to `http://localhost:8000/spec`

## Tools Used

CoffeeBuzz uses the following third-party tools and libraries:

* [CoffeeScript](http://coffeescript.org/)
* [Grunt](http://gruntjs.com/)
* [RequireJS](http://requirejs.org/)
* [r.js](http://requirejs.org/docs/optimization.html)
* [CoffeeScript plugin for RequireJS](https://github.com/requirejs/require-cs)
* [Almond](https://github.com/jrburke/almond)
* [Jasmine](http://jasmine.github.io/)
* [YUIDoc](http://yui.github.io/yuidoc/)
