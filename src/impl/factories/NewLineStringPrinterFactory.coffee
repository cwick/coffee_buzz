###*
# @module coffeebuzz.impl
# @submodule coffeebuzz.impl.factories
###
define (require) ->
  StringPrinterFactory = require "cs!../../interfaces/factories/StringPrinterFactory"
  NewLineStringPrinter = require "cs!../printers/NewLineStringPrinter"

  ###*
  # A concrete implementation of StringPrinterFactory
  #
  # @class NewLineStringPrinterFactory
  # @extends StringPrinterFactory
  ###
  class NewLineStringPrinterFactory extends StringPrinterFactory
    createStringPrinter: ->
      new NewLineStringPrinter()

