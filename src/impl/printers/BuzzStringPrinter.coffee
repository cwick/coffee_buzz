###*
# @module coffeebuzz.impl
# @submodule coffeebuzz.impl.printers
###

define (require) ->
  StringPrinter = require "cs!../../interfaces/printers/StringPrinter"

  ###*
  # A concrete implementation of {{#crossLink "StringPrinter"}}{{/crossLink}} that prints the string "Buzz".
  #
  # @class BuzzStringPrinter
  # @constructor
  # @extends StringPrinter
  ###
  class BuzzStringPrinter extends StringPrinter
    print: ->




