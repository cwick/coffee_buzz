###*
# @module coffeebuzz.impl
# @submodule coffeebuzz.impl.factories
###

define (require) ->
  StringPrinterFactory = require "cs!../../interfaces/factories/StringPrinterFactory"
  BuzzStringPrinter = require "cs!../printers/BuzzStringPrinter"

  ###*
  # A concrete implementation of {{#crossLink "StringPrinterFactory"}}{{/crossLink}} that
  # returns {{#crossLink "BuzzStringPrinter"}}{{/crossLink}} objects.
  #
  # @class BuzzStringPrinterFactory
  # @constructor
  # @extends StringPrinterFactory
  ###
  class BuzzStringPrinterFactory extends StringPrinterFactory
    createStringPrinter: ->
      new BuzzStringPrinter()

