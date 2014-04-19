###*
# @module coffeebuzz.impl
# @submodule coffeebuzz.impl.loop
###

define (require) ->
  ###*
  # Orchestrates loop execution.
  #
  # @class LoopRunner
  # @constructor
  # @param {LoopContextStateManipulation} stateManipulation the LoopContextStateManipulation interface
  #   used to run the loop
  # @param {LoopContextStateRetrieval} stateRetrieval the LoopContextStateRetrieval interface
  #   used to retreive loop context state
  # @param {LoopPayloadExecution} paylod the LoopPayloadExecution interface
  #   used to run the loop payload during each loop iteration
  ###
  class LoopRunner
    constructor: (@stateManipulation, @stateRetrieval, @payload) ->

    ###*
    # Orchestrates loop execution.
    #
    # @class LoopRunner
    # @constructor
    ###
    runLoop: ->
      @stateManipulation.start()

      while @stateManipulation.shouldProceed()
        @payload.runLoopPayload(@stateRetrieval)
        @stateManipulation.proceed()
