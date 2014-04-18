###*
# @module coffeebuzz.impl
# @submodule coffeebuzz.impl.strategies
###

define (require) ->
  FizzBuzzOutputStrategy = require "cs!../../interfaces/strategies/FizzBuzzOutputStrategy"

  ###*
  # Writes strings to the system console.
  #
  # @class SystemOutFizzBuzzOutputStrategy
  # @extends FizzBuzzOutputStrategy
  # @constructor
  ###
  class SystemOutFizzBuzzOutputStrategy extends FizzBuzzOutputStrategy
    constructor: ->
      @outputStream = window.console

    output: (output) ->
      @outputStream.log output

