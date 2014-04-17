###*
# @module coffeebuzz.impl
# @submodule coffeebuzz.impl.strategies
###

define (require) ->
  BuzzStrategyConstants = require "./BuzzStrategyConstants"
  FizzStrategyConstants = require "./FizzStrategyConstants"

  ###*
  # @class NoFizzNoBuzzStrategyConstants
  ###
  {
    NO_BUZZ_INTEGER_CONSTANT_VALUE: BuzzStrategyConstants.BUZZ_INTEGER_CONSTANT_VALUE,
    NO_FIZZ_INTEGER_CONSTANT_VALUE: FizzStrategyConstants.FIZZ_INTEGER_CONSTANT_VALUE
  }


