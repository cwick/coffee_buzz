###*
# @module coffeebuzz.impl
# @submodule coffeebuzz.impl.factories
###

define (require) ->
  StringPrinterFactory = require "cs!../../interfaces/factories/StringPrinterFactory"
  FizzStringPrinter = require "cs!../printers/FizzStringPrinter"

  ###*
  # A concrete implementation of {{#crossLink "StringPrinterFactory"}}{{/crossLink}} that returns {{#crossLink "FizzStringPrinter"}}{{/crossLink}} objects.
  #
  # @class FizzStringPrinterFactory
  # @constructor
  # @extends StringPrinterFactory
  ###
  class FizzStringPrinterFactory extends StringPrinterFactory
    createStringPrinter: ->
      new FizzStringPrinter()


