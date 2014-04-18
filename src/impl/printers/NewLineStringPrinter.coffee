###*
# @module coffeebuzz.impl
# @submodule coffeebuzz.impl.printers
###

define (require) ->
  StringPrinter = require "cs!../../interfaces/printers/StringPrinter"
  NewLineStringReturnerFactory = require "cs!../factories/NewLineStringReturnerFactory"
  SystemOutFizzBuzzOutputStrategyFactory = require "cs!../factories/SystemOutFizzBuzzOutputStrategyFactory"

  ###*
  # A concrete implementation of {{#crossLink "StringPrinter"}}{{/crossLink}} that prints newline characters.
  #
  # @class NewLineStringPrinter
  # @constructor
  # @extends StringPrinter
  ###
  class NewLineStringPrinter extends StringPrinter
    constructor: ->
      factory = new SystemOutFizzBuzzOutputStrategyFactory()
      @outputStrategy = factory.createOutputStrategy()

    print: ->
      myNewLineStringReturnerFactory = new NewLineStringReturnerFactory()
      myNewLineStringReturner = myNewLineStringReturnerFactory.createStringStringReturner()
      myNewLineString = myNewLineStringReturner.getReturnString()

      try
        @outputStrategy.output(myNewLineString)
      catch e
        # We're the enterprise...we don't get exceptions!




