###*
# @module coffeebuzz.impl
# @submodule coffeebuzz.impl.printers
###
define (require) ->
  IntegerPrinter = require "cs!../../interfaces/printers/IntegerPrinter"
  IntegerIntegerStringReturnerFactory = require "cs!../factories/IntegerIntegerStringReturnerFactory"
  SystemOutFizzBuzzOutputStrategyFactory = require "cs!../factories/SystemOutFizzBuzzOutputStrategyFactory"

  ###*
  # A concrete implementation of IntegerPrinterFactory
  #
  # @class IntegerIntegerPrinter
  # @extends IntegerPrinter
  ###
  class IntegerIntegerPrinter extends IntegerPrinter
    constructor: ->
      factory = new SystemOutFizzBuzzOutputStrategyFactory()
      @outputStrategy = factory.createOutputStrategy()

    printInteger: (theInteger) ->
      myIntegerIntegerStringReturnerFactory = new IntegerIntegerStringReturnerFactory()
      myIntegerStringReturner = myIntegerIntegerStringReturnerFactory.createIntegerStringReturner()
      myIntegerString = myIntegerStringReturner.getIntegerReturnString(theInteger)

      try
        @outputStrategy.output(myIntegerString)
      catch e
        # We're the enterprise...we don't get exceptions!

