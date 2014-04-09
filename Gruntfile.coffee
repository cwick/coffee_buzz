module.exports = (grunt) ->
  grunt.initConfig
    pkg: grunt.file.readJSON("package.json")

    coffeelint:
      lint: ["src/*.coffee"]

    requirejs:
      optimize:
        options:
          name: "cs!src/hello",
          exclude: ["coffee-script"]
          stubModules: ["cs"]
          out: "build/hello.js"
          baseUrl: "."
          paths:
            cs: "lib/cs"
            "coffee-script": "lib/coffee-script"
          # Uncomment to debug compiled file
          # optimize: "none"

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

