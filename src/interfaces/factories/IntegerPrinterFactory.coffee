###*
# @module coffeebuzz.interfaces
# @submodule coffeebuzz.interfaces.factories
###

###*
# An interface to a factory that creates IntegerPrinter objects.
#
# @class IntegerPrinterFactory
###
require ->\
class IntegerPrinterFactory
  ###*
  # Creates a new IntegerPrinter.
  #
  # @method createIntegerPrinter
  # @return {IntegerPrinter} a new IntegerPrinter
  ###
  createIntegerPrinter: ->
