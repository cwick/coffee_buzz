###*
# @module coffeebuzz.impl
# @submodule coffeebuzz.impl.loop
###

define (require) ->
  ###*
  # Stores loop final state.
  #
  # @class LoopFinalizer
  # @constructor
  # @param {Number} nLoopFinalValue The final value of the loop.
  ###
  class LoopFinalizer
    constructor: (@nLoopFinalValue) ->

    ###*
    # Gets the loop finalization point.
    #
    # @method getLoopFinalizationPoint
    # @return {Number} the loop finalization point.
    ###
    getLoopFinalizationPoint: ->
      @nLoopFinalValue


