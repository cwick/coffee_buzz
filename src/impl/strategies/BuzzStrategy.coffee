###*
# @module coffeebuzz.impl
# @submodule coffeebuzz.impl.strategies
###

define (require) ->
  IsEvenlyDivisibleStrategy = require "cs!../../interfaces/strategies/IsEvenlyDivisibleStrategy"

  ###*
  # A strategy that tests and integer for Buzz
  #
  # @class BuzzStrategy
  # @constructor
  ###
  class BuzzStrategy extends IsEvenlyDivisibleStrategy
    isEvenlyDivisible: (theInteger) ->
      if NumberIsMultipleOfAnotherNumberVerifier.numberIsMultipleOfAnotherNumber(theInteger, BuzzStrategyConstants.BUZZ_INTEGER_CONSTANT_VALUE)
        true
      else
        false
