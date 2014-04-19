###*
# @module coffeebuzz.impl
# @submodule coffeebuzz.impl.factories
###

define (require) ->
  FizzBuzzSolutionStrategyFactory = require "cs!../../interfaces/factories/FizzBuzzSolutionStrategyFactory"
  EnterpriseGradeFizzBuzzSolutionStrategy = require "cs!../strategies/EnterpriseGradeFizzBuzzSolutionStrategy"

  ###*
  # A concrete implementation of {{#crossLink "FizzBuzzSolutionStrategyFactory"}}{{/crossLink}}
  # that returns an Enterprise-grade solution strategy.
  #
  # @class EnterpriseGradeFizzBuzzSolutionStrategyFactory
  # @constructor
  # @extends FizzBuzzSolutionStrategyFactory
  ###
  class EnterpriseGradeFizzBuzzSolutionStrategyFactory extends FizzBuzzSolutionStrategyFactory
    createFizzBuzzSolutionStrategy: ->
      new EnterpriseGradeFizzBuzzSolutionStrategy()


