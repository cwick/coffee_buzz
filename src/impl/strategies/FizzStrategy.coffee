###*
# @module coffeebuzz.impl
# @submodule coffeebuzz.impl.strategies
###

define (require) ->
  IsEvenlyDivisibleStrategy = require "cs!../../interfaces/strategies/IsEvenlyDivisibleStrategy"
  NumberIsMultipleOfAnotherNumberVerifier = require "cs!../math/arithmetics/NumberIsMultipleOfAnotherNumberVerifier"
  FizzStrategyConstants = require "cs!./constants/FizzStrategyConstants"

  ###*
  # A strategy that tests an integer for Fizz
  #
  # @class FizzStrategy
  # @constructor
  ###
  class FizzStrategy extends IsEvenlyDivisibleStrategy
    isEvenlyDivisible: (theInteger) ->
      if NumberIsMultipleOfAnotherNumberVerifier.numberIsMultipleOfAnotherNumber(theInteger, FizzStrategyConstants.FIZZ_INTEGER_CONSTANT_VALUE)
        true
      else
        false

