###*
# @module coffeebuzz.impl
# @submodule coffeebuzz.impl.printers
###

define (require) ->
  StringPrinter = require "cs!../../interfaces/printers/StringPrinter"

  ###*
  # A concrete implementation of {{#crossLink "StringPrinter"}}{{/crossLink}} that prints the string "Fizz".
  #
  # @class FizzStringPrinter
  # @constructor
  # @extends StringPrinter
  ###
  class FizzStringPrinter extends StringPrinter
    print: ->



