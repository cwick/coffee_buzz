###*
# @module coffeebuzz.interfaces
# @submodule coffeebuzz.interfaces.loop
###

define ->
  ###*
  # An interface for executing a loop payload.
  #
  # @class LoopPayloadExecution
  ###
  class LoopPayloadExecution
    ###*
    # Executes the loop payload.
    #
    # @method runLoopPayload
    # @param {LoopContextStateRetrieval} stateRetrieval a LoopContextStateRetrieval
    # interface used to retreive current loop context state
    ###
    runLoopPayload: (stateRetrieval) ->


