# CoffeeBuzz

CoffeeBuzz is a serious, enterprise-quality software library that implements the [FizzBuzz counting algorithm](http://en.wikipedia.org/wiki/Fizz_buzz)

Inspired by [FizzBuzzEnterpriseEdition](https://github.com/EnterpriseQualityCoding/FizzBuzzEnterpriseEdition), and feeling that many Javascript libraries were not up to the high standards of serious business enterprise companies, I created CoffeeBuzz to set a new standard in software quality on the web.

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

A sample application is included that makes use of the Hello World library. To run the app, type `grunt server`, then point your browser to `http://localhost:8000`. To view the auto-generated documentation, go to `http://localhost:8000/doc`

## Tools Used

CoffeeBuzz uses the following third-party tools and libraries:

* [CoffeeScript](http://coffeescript.org/)
* [Grunt](http://gruntjs.com/)
* [RequireJS](http://requirejs.org/)
* [r.js](http://requirejs.org/docs/optimization.html)
* [CoffeeScript plugin for RequireJS](https://github.com/requirejs/require-cs)
* [Jasmine](http://jasmine.github.io/)
* [YUIDoc](http://yui.github.io/yuidoc/)
