###*
# A concrete implementation of StringPrinterFactory
#
# @module coffeebuzz.impl
# @submodule coffeebuzz.impl.factories
#
# @class NewLineStringPrinterFactory
# @extends StringPrinterFactory
###
define (require) ->
  StringPrinterFactory = require "cs!../../interfaces/factories/StringPrinterFactory"

  class NewLineStringPrinterFactory extends StringPrinterFactory

