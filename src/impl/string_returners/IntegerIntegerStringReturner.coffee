###*
# @module coffeebuzz.impl
# @submodule coffeebuzz.impl.string_returners
###
define (require) ->
  IntegerStringReturner = require "cs!../../interfaces/string_returners/IntegerStringReturner"

  ###*
  # @class IntegerIntegerStringReturner
  # @extends IntegerStringReturner
  ###
  class IntegerIntegerStringReturner extends IntegerStringReturner
    getIntegerReturnString: (theInteger) ->
      theInteger.toString()

