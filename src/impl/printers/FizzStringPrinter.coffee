###*
# @module coffeebuzz.impl
# @submodule coffeebuzz.impl.printers
###

define (require) ->
  StringPrinter = require "cs!../../interfaces/printers/StringPrinter"
  SystemOutFizzBuzzOutputStrategyFactory = require "cs!../factories/SystemOutFizzBuzzOutputStrategyFactory"

  ###*
  # A concrete implementation of {{#crossLink "StringPrinter"}}{{/crossLink}} that prints the string "Fizz".
  #
  # @class FizzStringPrinter
  # @constructor
  # @extends StringPrinter
  ###
  class FizzStringPrinter extends StringPrinter
    constructor: ->
      factory = new SystemOutFizzBuzzOutputStrategyFactory()
      @outputStrategy = factory.createOutputStrategy()

    print: ->
      myFizzStringReturnerFactory = new FizzStringReturnerFactory()
      myFizzStringReturner = myFizzStringReturnerFactory.createStringStringReturner()

      try
        @outputStrategy.output(myFizzStringReturner.getReturnString())
      catch e
        # We're the enterprise...we don't get exceptions!


