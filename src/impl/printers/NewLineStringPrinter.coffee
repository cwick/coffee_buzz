###*
# @module coffeebuzz.impl
# @submodule coffeebuzz.impl.printers
###

define (require) ->
  StringPrinter = require "cs!../../interfaces/printers/StringPrinter"

  ###*
  # A concrete implementation of {{#crossLink "StringPrinter"}}{{/crossLink}} that prints newline characters.
  #
  # @class NewLineStringPrinter
  # @constructor
  # @extends StringPrinter
  ###
  class NewLineStringPrinter extends StringPrinter
    print: ->





