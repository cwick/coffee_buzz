###*
# @module coffeebuzz.impl
# @submodule coffeebuzz.impl.factories
###
define (require) ->
  StringStringReturnerFactory = require "cs!../../interfaces/factories/StringStringReturnerFactory"
  FizzStringReturner = require "cs!../stringreturners/FizzStringReturner"

  ###*
  # A concrete implementation of StringStringReturnerFactory
  #
  # @class FizzStringReturnerFactory
  # @extends StringStringReturnerFactory
  # @constructor
  ###
  class FizzStringReturnerFactory extends StringStringReturnerFactory
    createStringStringReturner: ->
      new FizzStringReturner()



