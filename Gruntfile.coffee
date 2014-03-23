module.exports = (grunt) ->
  grunt.initConfig
    pkg: grunt.file.readJSON("package.json")
    coffeelint:
      lint: ["src/*.coffee"]

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


  grunt.loadNpmTasks "grunt-contrib-yuidoc"
  grunt.loadNpmTasks "grunt-coffeelint"

  grunt.registerTask("default", ["coffeelint", "yuidoc"]);

