###*
# @module coffeebuzz.impl
# @submodule coffeebuzz.impl.strategies
###

define (require) ->
  IsEvenlyDivisibleStrategy = require "cs!../../interfaces/strategies/IsEvenlyDivisibleStrategy"
  NumberIsMultipleOfAnotherNumberVerifier =
    require "cs!../math/arithmetics/NumberIsMultipleOfAnotherNumberVerifier"
  NoFizzNoBuzzStrategyConstants = require "cs!./constants/NoFizzNoBuzzStrategyConstants"

  ###*
  # A strategy that tests an integer for the absence of both Fizz and Buzz
  #
  # @class NoFizzNoBuzzStrategy
  # @constructor
  ###
  class NoFizzNoBuzzStrategy extends IsEvenlyDivisibleStrategy
    isEvenlyDivisible: (theInteger) ->
      if !NumberIsMultipleOfAnotherNumberVerifier.numberIsMultipleOfAnotherNumber(
        theInteger, NoFizzNoBuzzStrategyConstants.NO_FIZZ_INTEGER_CONSTANT_VALUE)

        if !NumberIsMultipleOfAnotherNumberVerifier.numberIsMultipleOfAnotherNumber(
          theInteger, NoFizzNoBuzzStrategyConstants.NO_BUZZ_INTEGER_CONSTANT_VALUE)
          return true
        else
          return false
      else if !NumberIsMultipleOfAnotherNumberVerifier.numberIsMultipleOfAnotherNumber(
        theInteger, NoFizzNoBuzzStrategyConstants.NO_BUZZ_INTEGER_CONSTANT_VALUE)

        if !NumberIsMultipleOfAnotherNumberVerifier.numberIsMultipleOfAnotherNumber(
          theInteger, NoFizzNoBuzzStrategyConstants.NO_FIZZ_INTEGER_CONSTANT_VALUE)
          return true
        else
          return false
      else
        return false
