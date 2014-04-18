###*
# @module coffeebuzz.impl
# @submodule coffeebuzz.impl.stringreturners
###
define (require) ->
  StringStringReturner = require "cs!../../interfaces/stringreturners/StringStringReturner"

  ###*
  # An implementation of StringStringReturner that returns the string "Fizz".
  #
  # @class FizzStringReturner
  # @extends StringStringReturner
  ###
  class FizzStringReturner extends StringStringReturner
    getReturnString: ->
      "Fizz"



