###*
# @module coffeebuzz.impl
# @submodule coffeebuzz.impl.factories
###
define (require) ->
  StringStringReturnerFactory = require "cs!../../interfaces/factories/StringStringReturnerFactory"
  NewLineStringReturner = require "cs!../stringreturners/NewLineStringReturner"

  ###*
  # A concrete implementation of StringStringReturnerFactory
  #
  # @class NewLineStringReturnerFactory
  # @extends StringStringReturnerFactory
  # @constructor
  ###
  class NewLineStringReturnerFactory extends StringStringReturnerFactory
    createStringStringReturner: ->
      new NewLineStringReturner()


