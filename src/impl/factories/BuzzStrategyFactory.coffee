###*
# @module coffeebuzz.impl
# @submodule coffeebuzz.impl.factories
###

define (require) ->
  IsEvenlyDivisibleStrategyFactory = require "cs!../../interfaces/factories/IsEvenlyDivisibleStrategyFactory"
  BuzzStrategy = require "cs!../strategies/BuzzStrategy"

  ###*
  # A factory that creates BuzzStrategy objects.
  #
  # @class BuzzStrategyFactory
  # @constructor
  ###
  class BuzzStrategyFactory extends IsEvenlyDivisibleStrategyFactory
    createIsEvenlyDivisibleStrategy: -> new BuzzStrategy()

