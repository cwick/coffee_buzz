###*
# @module coffeebuzz.impl
# @submodule coffeebuzz.impl.stringreturners
###
define (require) ->
  StringStringReturner = require "cs!../../interfaces/stringreturners/StringStringReturner"

  ###*
  # An implementation of StringStringReturner that returns the string "Buzz".
  #
  # @class BuzzStringReturner
  # @extends StringStringReturner
  ###
  class BuzzStringReturner extends StringStringReturner
    getReturnString: ->
      "Buzz"




