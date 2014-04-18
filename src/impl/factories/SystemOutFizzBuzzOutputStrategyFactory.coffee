###*
# @module coffeebuzz.impl
# @submodule coffeebuzz.impl.factories
###
define (require) ->
  FizzBuzzOutputStrategyFactory = require "cs!../../interfaces/factories/FizzBuzzOutputStrategyFactory"
  SystemOutFizzBuzzOutputStrategy = require "cs!../strategies/SystemOutFizzBuzzOutputStrategy"

  ###*
  # A concrete implementation of FizzBuzzOutputStrategyFactory
  #
  # @class SystemOutFizzBuzzOutputStrategyFactory
  # @extends FizzBuzzOutputStrategyFactory
  # @constructor
  ###
  class SystemOutFizzBuzzOutputStrategyFactory extends FizzBuzzOutputStrategyFactory
    createOutputStrategy: ->
      new SystemOutFizzBuzzOutputStrategy()


