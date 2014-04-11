###*
# @module coffeebuzz.impl
# @submodule coffeebuzz.impl.strategies
###

define (require) ->
  IsEvenlyDivisibleStrategy = require "cs!../../interfaces/strategies/IsEvenlyDivisibleStrategy"

  ###*
  # A factory that creates FizzStrategy objects.
  #
  # @class FizzStrategyFactory
  # @constructor
  ###
  class FizzStrategyFactory extends IsEvenlyDivisibleStrategy
    isEvenlyDivisible: (theInteger) ->
      if NumberIsMultipleOfAnotherNumberVerifier.numberIsMultipleOfAnotherNumber(theInteger, FizzStrategyConstants.FIZZ_INTEGER_CONSTANT_VALUE)
        true
      else
        false

