###*
# @module coffeebuzz.interfaces
# @submodule coffeebuzz.interfaces.factories
###

###*
# An interface to a factory that creates {{#crossLink "StringPrinter"}}{{/crossLink}} objects.
#
# @class StringPrinterFactory
###
require ->\
class StringPrinterFactory
  ###*
  # Creates a new {{#crossLink "StringPrinter"}}{{/crossLink}}.
  #
  # @method createStringPrinter
  # @return {StringPrinter} a new {{#crossLink "StringPrinter"}}{{/crossLink}}
  ###
  createStringPrinter: ->
