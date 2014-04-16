###*
# @module coffeebuzz.impl
# @submodule coffeebuzz.impl.math
###

define (require) ->
  ###*
  # Determines if one number is a multiple of another number.
  #
  # @class NumberIsMultipleOfAnotherNumberVerifier
  ###
  class NumberIsMultipleOfAnotherNumberVerifier
    ###*
    # Determines if one number is a multiple of another number.
    #
    # @method numberIsMultipleOfAnotherNumber
    # @static
    # @param {Number} nFirstNumber the first number
    # @param {Number} nSecondNumber the second number
    ###
    @numberIsMultipleOfAnotherNumber: (nFirstNumber, nSecondNumber) ->
      try
        nDivideFirstIntegerBySecondIntegerResult =
          IntegerDivider.divide(nFirstNumber, nSecondNumber)
        nMultiplyDivisionResultBySecondIntegerResult =
          nDivideFirstIntegerBySecondIntegerResult * nSecondNumber

        if IntegerForEqualityComparator.areTwoIntegersEqual(nMultiplyDivisionResultBySecondIntegerResult, nFirstNumber)
          true
        else
          false
      catch e
        false
