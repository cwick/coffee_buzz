###*
# @module coffeebuzz.interfaces
# @submodule coffeebuzz.interfaces.factories
###

###*
# An interface to a factory that creates {{#crossLink "IntegerPrinter"}}{{/crossLink}} objects.
#
# @class IntegerPrinterFactory
###
define ->\
class IntegerPrinterFactory
  ###*
  # Creates a new {{#crossLink "IntegerPrinter"}}{{/crossLink}}.
  #
  # @method createIntegerPrinter
  # @return {IntegerPrinter} a new {{#crossLink "IntegerPrinter"}}{{/crossLink}}
  ###
  createIntegerPrinter: ->
