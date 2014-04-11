module.exports = (grunt) ->
  grunt.initConfig
    pkg: grunt.file.readJSON("package.json")

    coffeelint:
      lint: ["src/**/*.coffee"]

    requirejs:
      optimize:
        options:
          baseUrl: "src"
          name: "../lib/almond"
          include: ["cs!hello"]
          exclude: ["coffee-script"]
          stubModules: ["cs"]
          out: "build/hello.js"
          wrap:
            startFile: "src/intro.js"
            endFile: "src/outro.js"

          paths:
            cs: "../lib/cs"
            "coffee-script": "../lib/coffee-script"
          # Uncomment to debug compiled file
          # optimize: "none"

          # Strip "cs!" from all the module names
          onBuildWrite: (moduleName, path, contents) ->
            contents.replace /define\('cs!/g, "define('"

    yuidoc:
      compile:
        name: "<%= pkg.name %>"
        description: "<%= pkg.description %>"
        version: "<%= pkg.version %>"
        url: "<%= pkg.homepage %>"
        options:
          paths: "src"
          outdir: "doc"
          syntaxtype: "coffee"
          extension: ".coffee"

    connect:
      server:
        options: {}

  grunt.loadNpmTasks "grunt-contrib-yuidoc"
  grunt.loadNpmTasks "grunt-coffeelint"
  grunt.loadNpmTasks "grunt-contrib-requirejs"
  grunt.loadNpmTasks "grunt-contrib-connect"

  grunt.registerTask "default", ["coffeelint", "requirejs", "yuidoc"]
  grunt.registerTask "server", ["connect:server:keepalive"]

