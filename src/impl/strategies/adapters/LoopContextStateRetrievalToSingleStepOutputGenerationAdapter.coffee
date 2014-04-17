###*
# @module coffeebuzz.impl
# @submodule coffeebuzz.impl.strategies
###

define (require) ->
  SingleStepOutputGenerationParameterStrategy =
    require "cs!../../../interfaces/strategies/SingleStepOutputGenerationParameterStrategy"

  ###*
  # @class LoopContextStateRetrievalToSingleStepOutputGenerationAdapter
  # @constructor
  # @extends SingleStepOutputGenerationParameter
  ###
  class LoopContextStateRetrievalToSingleStepOutputGenerationAdapter extends SingleStepOutputGenerationParameterStrategy
    constructor: (@retrievalToAdapt) ->

    retrieveIntegerValue: ->
      @retrievalToAdapt.getControlParameter()

