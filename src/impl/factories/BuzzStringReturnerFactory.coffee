###*
# @module coffeebuzz.impl
# @submodule coffeebuzz.impl.factories
###
define (require) ->
  StringStringReturnerFactory = require "cs!../../interfaces/factories/StringStringReturnerFactory"
  BuzzStringReturner = require "cs!../stringreturners/BuzzStringReturner"

  ###*
  # A concrete implementation of StringStringReturnerFactory
  #
  # @class BuzzStringReturnerFactory
  # @extends StringStringReturnerFactory
  # @constructor
  ###
  class BuzzStringReturnerFactory extends StringStringReturnerFactory
    createStringStringReturner: ->
      new BuzzStringReturner()




