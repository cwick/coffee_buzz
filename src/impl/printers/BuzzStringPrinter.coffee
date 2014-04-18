###*
# @module coffeebuzz.impl
# @submodule coffeebuzz.impl.printers
###

define (require) ->
  StringPrinter = require "cs!../../interfaces/printers/StringPrinter"
  SystemOutFizzBuzzOutputStrategyFactory = require "cs!../factories/SystemOutFizzBuzzOutputStrategyFactory"

  ###*
  # A concrete implementation of {{#crossLink "StringPrinter"}}{{/crossLink}} that prints the string "Buzz".
  #
  # @class BuzzStringPrinter
  # @constructor
  # @extends StringPrinter
  ###
  class BuzzStringPrinter extends StringPrinter
    constructor: ->
      factory = new SystemOutFizzBuzzOutputStrategyFactory()
      @outputStrategy = factory.createOutputStrategy()

    print: ->
      myBuzzStringReturnerFactory = new BuzzStringReturnerFactory()
      myBuzzStringReturner = myBuzzStringReturnerFactory.createStringStringReturner()

      try
        @outputStrategy.output(myBuzzStringReturner.getReturnString())
      catch e
        # We're the enterprise...we don't get exceptions!






