###*
# @module coffeebuzz.impl
# @submodule coffeebuzz.impl.loop
###

define (require) ->
  LOOP_INC_VALUE = 1

  ###*
  # Encapsulates loop stepper logic.
  #
  # @class LoopStep
  # @constructor
  ###
  class LoopStep
    ###*
    # Transition to the next loop step
    #
    # @method stepLoop
    # @param {Number} nCurrentNumber the current step counter
    # @return {Number} the next step counter
    ###
    stepLoop: (nCurrentNumber) ->
      nCurrentNumber + LOOP_INC_VALUE



