###*
# @module coffeebuzz.interfaces
# @submodule coffeebuzz.interfaces.factories
###

###*
# An interface to a factory that creates {{#crossLink "FizzBuzzOutputStrategy"}}{{/crossLink}} objects.
#
# @class FizzBuzzOutputStrategyFactory
###
require ->\
class FizzBuzzOutputStrategyFactory
  ###*
  # Creates a new {{#crossLink "FizzBuzzOutputStrategy"}}{{/crossLink}}.
  #
  # @method createOutputStrategy
  # @return {FizzBuzzOutputStrategy} a new FizzBuzzOutputStrategy
  ###
  createOutputStrategy: ->

