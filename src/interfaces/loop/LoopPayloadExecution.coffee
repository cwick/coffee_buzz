###*
# @module coffeebuzz.interfaces
# @submodule coffeebuzz.interfaces.loop
###

###*
# An interface for executing a loop payload.
#
# @class LoopPayloadExecution
###
define ->\
class LoopPayloadExecution
  ###*
  # Gets the value of the loop context control parameter
  #
  # @method runLoopPayload
  # @param {LoopContextStateRetrieval} stateRetrieval a LoopContextStateRetrieval interface used to retreive current loop context state
  ###
  runLoopPayload: (stateRetrieval) ->


