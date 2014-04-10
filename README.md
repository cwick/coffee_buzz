# Hello World

Hello World is a Javascript library that says "hello". Its only use is to show off a typical automated build process that a Javascript library might use.

## Installing

1. Install [node.js](http://nodejs.org/)
1. Install Hello World's dependencies into the local directory: ```npm install```
1. Run Grunt: ```grunt```

A full build of Hello World performs the following tasks:

1. Checks the CoffeeScript code with [CoffeeLint](http://www.coffeelint.org/).
1. Compiles the CoffeeScript, concatenates it into one big file with [r.js](http://requirejs.org/docs/optimization.html), and minimizes the file with [UglifyJS](https://github.com/mishoo/UglifyJS)
1. Builds the [YUIDoc](http://yui.github.io/yuidoc/) documentation into the ```doc``` directory.

## Running

A sample application is included that makes use of the Hello World library. To run the app, type `grunt server`, then point your browser to `http://localhost:8000`. To view the auto-generated documentation, go to `http://localhost:8000/doc`

## Developing

The build system has some nice features that make developing HelloWorld really easy:

1. During development, all CoffeeScript files are compiled on-the-fly in the browser. All compiler errors will show up in the development console.
2. Source maps are automatically generated, so errors and stack traces will reference the original `.coffee` files.
