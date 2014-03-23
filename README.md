# Hello World

Hello World is a Javascript library that says "hello". Its only use is to show off a typical automated build process that a Javascript library might use.

## Installing

1. Install [node.js](http://nodejs.org/)
1. Install Hello World's dependencies into the local directory: ```npm install```
1. Run Grunt: ```grunt```

A full build of Hello World performs the following tasks:

1. Checks the CoffeeScript code with [CoffeeLint](http://www.coffeelint.org/).
1. Compiles the CoffeeScript, concatenates into one big file, and minimizes the file with [UglifyJS](https://github.com/mishoo/UglifyJS)
1. Builds the [YUIDoc](http://yui.github.io/yuidoc/) documentation into the ```doc``` directory.
