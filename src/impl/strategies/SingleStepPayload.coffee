###*
# @module coffeebuzz.impl
# @submodule coffeebuzz.impl.strategies
###

define (require) ->
  LoopPayloadExecution = require "cs!../../interfaces/loop/LoopPayloadExecution"
  SingleStepOutputGenerationStrategy = require "cs!./SingleStepOutputGenerationStrategy"

  ###*
  # What the fuck does this class do?
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
