###*
# @module coffeebuzz.impl
# @submodule coffeebuzz.impl.loop
###

define (require) ->
  LoopComponentFactory = require "cs!../factories/LoopComponentFactory"

  ###*
  # A concrete loop context.
  #
  # @class LoopContext
  # @constructor
  # @uses LoopContextStateManipulation
  # @uses LoopContextStateRetrieval
  ###
  class LoopContext
    constructor: (nLoopControlParameterFinalValue) ->
      myLoopComponentFactory = new LoopComponentFactory()
      @myLoopInitializer = myLoopComponentFactory.createLoopInitializer()
      @myLoopFinalizer = myLoopComponentFactory.createLoopFinalizer(nLoopControlParameterFinalValue)
      @myLoopCondition = myLoopComponentFactory.createLoopCondition()
      @myLoopStep = myLoopComponentFactory.createLoopStep()

    start: ->
      @myCurrentControlParameterValue = @myLoopInitializer.getLoopInitializationPoint()

    shouldProceed: ->
      @myLoopCondition.evaluateLoop(@myCurrentControlParameterValue,
        @myLoopFinalizer.getLoopFinalizationPoint())

    proceed: ->
      @myCurrentControlParameterValue =
        @myLoopStep.stepLoop(@myCurrentControlParameterValue)

    getControlParameter: ->
      @myCurrentControlParameterValue

