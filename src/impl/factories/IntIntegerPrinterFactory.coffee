###*
# @module coffeebuzz.impl
# @submodule coffeebuzz.impl.factories
###
define (require) ->
  IntegerPrinterFactory = require "cs!../../interfaces/factories/IntegerPrinterFactory"
  IntegerIntegerPrinter = require "cs!../printers/IntegerIntegerPrinter"

  ###*
  # A concrete implementation of IntegerPrinterFactory
  #
  # @class IntIntegerPrinterFactory
  # @extends IntegerPrinterFactory
  ###
  class IntIntegerPrinterFactory extends IntegerPrinterFactory
    createPrinter: ->
      new IntegerIntegerPrinter()
