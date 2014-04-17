###*
# @module coffeebuzz.impl
# @submodule coffeebuzz.impl.factories
###

define (require) ->
  IsEvenlyDivisibleStrategyFactory = require "cs!../../interfaces/factories/IsEvenlyDivisibleStrategyFactory"
  NoFizzNoBuzzStrategy = require "cs!../strategies/NoFizzNoBuzzStrategy"

  ###*
  # A factory that creates NoFizzNoBuzzStrategy objects.
  #
  # @class NoFizzNoBuzzStrategyFactory
  # @constructor
  ###
  class NoFizzNoBuzzStrategyFactory extends IsEvenlyDivisibleStrategyFactory
    createIsEvenlyDivisibleStrategy: -> new NoFizzNoBuzzStrategy()

