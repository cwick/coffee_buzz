###*
# @module coffeebuzz.impl
# @submodule coffeebuzz.impl.factories
###

###*
# A concrete implementation of {{#crossLink "StringPrinterFactory"}}{{/crossLink}} that returns {{#crossLink "FizzStringPrinter"}}{{/crossLink}} objects.
#
# @class FizzStringPrinterFactory
# @constructor
# @extends StringPrinterFactory
###
define (require) ->
  StringPrinterFactory = require "cs!../../interfaces/factories/StringPrinterFactory"

  class FizzStringPrinterFactory extends StringPrinterFactory


