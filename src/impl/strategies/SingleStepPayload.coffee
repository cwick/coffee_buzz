###*
# @module coffeebuzz.impl
# @submodule coffeebuzz.impl.strategies
###

define (require) ->
  LoopPayloadExecution = require "cs!../../interfaces/loop/LoopPayloadExecution"
  SingleStepOutputGenerationStrategy = require "cs!./SingleStepOutputGenerationStrategy"
  LoopContextStateRetrievalToSingleStepOutputGenerationAdapter =
    require "cs!./adapters/LoopContextStateRetrievalToSingleStepOutputGenerationAdapter"

  ###*
  # Implements a single-step loop payload.
  #
  # @class SingleStepPayload
  # @constructor
  # @extends LoopPayloadExecution
  ###
  class SingleStepPayload extends LoopPayloadExecution
    constructor: ->
      @myGenerator = new SingleStepOutputGenerationStrategy()

    runLoopPayload: (stateRetrieval) ->
      adapter = new LoopContextStateRetrievalToSingleStepOutputGenerationAdapter(stateRetrieval)
      @myGenerator.performGenerationForCurrentStep(adapter)
