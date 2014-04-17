###*
# @module coffeebuzz.impl
# @submodule coffeebuzz.impl.strategies
###

define (require) ->
  IsEvenlyDivisibleStrategy = require "cs!../../interfaces/strategies/IsEvenlyDivisibleStrategy"
  NumberIsMultipleOfAnotherNumberVerifier = require "cs!../math/arithmetics/NumberIsMultipleOfAnotherNumberVerifier"
  BuzzStrategyConstants = require "cs!./constants/BuzzStrategyConstants"

  ###*
  # A strategy that tests an integer for Buzz
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

