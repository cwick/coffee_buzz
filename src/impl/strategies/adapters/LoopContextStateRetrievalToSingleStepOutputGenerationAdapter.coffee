###*
# @module coffeebuzz.impl
# @submodule coffeebuzz.impl.strategies
###

define (require) ->
  ###*
  # @class LoopContextStateRetrievalToSingleStepOutputGenerationAdapter
  # @constructor
  # @extends SingleStepOutputGenerationParameter
  ###
  class LoopContextStateRetrievalToSingleStepOutputGenerationAdapter
    constructor: (@retrievalToAdapt) ->

    retrieveIntegerValue: ->
      @retrievalToAdapt.getControlParameter()


