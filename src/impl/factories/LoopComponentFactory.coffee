###*
# @module coffeebuzz.impl
# @submodule coffeebuzz.impl.factories
###

define (require) ->
  LoopCondition = require "cs!../loop/LoopCondition"
  LoopInitializer = require "cs!../loop/LoopInitializer"
  LoopFinalizer = require "cs!../loop/LoopFinalizer"
  LoopStep = require "cs!../loop/LoopStep"

  ###*
  # A factory that creates loop components.
  #
  # @class LoopComponentFactory
  # @constructor
  ###
  class LoopComponentFactory
    createLoopCondition: ->
      new LoopCondition()

    createLoopInitializer: ->
      new LoopInitializer()

    createLoopFinalizer: (nLoopFinalValue) ->
      new LoopFinalizer(nLoopFinalValue)

    createLoopStep: ->
      new LoopStep()



