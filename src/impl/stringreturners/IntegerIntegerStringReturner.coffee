###*
# @module coffeebuzz.impl
# @submodule coffeebuzz.impl.stringreturners
###
define (require) ->
  IntegerStringReturner = require "cs!../../interfaces/stringreturners/IntegerStringReturner"

  ###*
  # @class IntegerIntegerStringReturner
  # @extends IntegerStringReturner
  ###
  class IntegerIntegerStringReturner extends IntegerStringReturner
    getIntegerReturnString: (theInteger) ->
      theInteger.toString()

