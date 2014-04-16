###*
# A concrete implementation of IntegerPrinterFactory
#
# @module coffeebuzz.impl
# @submodule coffeebuzz.impl.factories
#
# @class IntIntegerPrinterFactory
# @extends IntegerPrinterFactory
###
define (require) ->
  IntegerPrinterFactory = require "cs!../../interfaces/factories/IntegerPrinterFactory"

  class IntIntegerPrinterFactory extends IntegerPrinterFactory
