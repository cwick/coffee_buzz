###*
# @module coffeebuzz.impl
# @submodule coffeebuzz.impl.stringreturners
###
define (require) ->
  StringStringReturner = require "cs!../../interfaces/stringreturners/StringStringReturner"

  ###*
  # An implementation of StringStringReturner that returns newlines.
  #
  # @class NewLineStringReturner
  # @extends StringStringReturner
  ###
  class NewLineStringReturner extends StringStringReturner
    getReturnString: ->
      "\n"


