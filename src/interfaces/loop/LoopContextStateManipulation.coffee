###*
# @module coffeebuzz.interfaces
# @submodule coffeebuzz.interfaces.loop
###

###*
# An interface for managing state associated with a mutable loop context.
#
# @class LoopContextStateManipulation
###
require ->\
class LoopContextStateManipulation
  ###*
  # Initializes the loop context with initial state data.
  #
  # @method start
  ###
  start: ->

  ###*
  # Tests the internal loop context state for a terminating condition.
  #
  # @method shouldProceed
  # @return {boolean} true if the loop context state has reached a terminating condition, or false if the loop context state is still able to proceed.
  ###
  shouldProceed: ->

  ###*
  # Increments the internal loop context state.
  #
  # @method proceed
  ###
  proceed: ->
