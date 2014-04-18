###*
# @module coffeebuzz.impl
# @submodule coffeebuzz.impl.factories
###
define (require) ->
  IntegerStringReturnerFactory = require "cs!../../interfaces/factories/IntegerStringReturnerFactory"
  IntegerIntegerStringReturner = require "cs!../stringreturners/IntegerIntegerStringReturner"

  ###*
  # A concrete implementation of IntegerStringReturnerFactory.
  #
  # @class IntegerIntegerStringReturnerFactory
  # @extends IntegerStringReturnerFactory
  ###
  class IntegerIntegerStringReturnerFactory extends IntegerStringReturnerFactory
    createIntegerStringReturner: ->
      new IntegerIntegerStringReturner()
