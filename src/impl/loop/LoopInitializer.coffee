###*
# @module coffeebuzz.impl
# @submodule coffeebuzz.impl.loop
###

define (require) ->
  ###*
  # Initializes loops.
  #
  # @class LoopInitializer
  # @constructor
  ###
  class LoopInitializer
    LOOP_INIT_VALUE = 1

    ###*
    # Gets the loop initialization point.
    #
    # @method getLoopInitializationPoint
    ###
    getLoopInitializationPoint: ->
      LOOP_INIT_VALUE

