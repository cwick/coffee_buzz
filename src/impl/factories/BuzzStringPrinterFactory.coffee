###*
# @module coffeebuzz.impl
# @submodule coffeebuzz.impl.factories
###

###*
# A concrete implementation of {{#crossLink "StringPrinterFactory"}}{{/crossLink}} that returns {{#crossLink "BuzzStringPrinter"}}{{/crossLink}} objects.
#
# @class BuzzStringPrinterFactory
# @constructor
# @extends StringPrinterFactory
###
define (require) ->
  StringPrinterFactory = require "cs!../../interfaces/factories/StringPrinterFactory"

  class BuzzStringPrinterFactory extends StringPrinterFactory

