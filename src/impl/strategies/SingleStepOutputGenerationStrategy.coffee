###*
# @module coffeebuzz.impl
# @submodule coffeebuzz.impl.strategies
###

define (require) ->
  ###*
  # Generates output for the current loop step.
  #
  # @class SingleStepOutputGenerationStrategy
  # @constructor
  ###
  class SingleStepOutputGenerationStrategy
    constructor: ->

    ###*
    # Generates output for the current loop step.
    #
    # @method performGenerationForCurrentStep
    # @param {SingleStepOutputGenerationParameter} generationParameter the parameter representing the current loop step
    ###
    performGenerationForCurrentStep: (generationParameter) ->

