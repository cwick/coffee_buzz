###*
# @module coffeebuzz.impl
# @submodule coffeebuzz.impl.factories
###

define (require) ->
  IsEvenlyDivisibleStrategyFactory = require "cs!../../interfaces/factories/IsEvenlyDivisibleStrategyFactory"
  FizzStrategy = require "cs!../strategies/FizzStrategy"

  ###*
  # A factory that creates FizzStrategy objects.
  #
  # @class FizzStrategyFactory
  # @constructor
  ###
  class FizzStrategyFactory extends IsEvenlyDivisibleStrategyFactory
    createIsEvenlyDivisibleStrategy: -> new FizzStrategy()
