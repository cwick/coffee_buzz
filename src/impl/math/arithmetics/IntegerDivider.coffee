###*
# @module coffeebuzz.impl
# @submodule coffeebuzz.impl.math
###

define (require) ->
  IntegerForEqualityComparator = require "cs!../../strategies/comparators/integercomparator/IntegerForEqualityComparator"
  ThreeWayIntegerComparator = require "cs!../../strategies/comparators/integercomparator/ThreeWayIntegerComparator"
  ThreeWayIntegerComparisonResult = require "cs!../../strategies/comparators/integercomparator/ThreeWayIntegerComparisonResult"

  ###*
  # Divides one integer by another.
  #
  # @class IntegerDivider
  ###
  class IntegerDivider
    INTEGER_DIVIDE_ZERO_VALUE = 0

    ###*
    # Divides one integer by another.
    #
    # @method divide
    # @static
    # @param {Number} nFirstNumber the first integer
    # @param {Number} nSecondNumber the second integer
    ###
    @divide: (nFirstNumber, nSecondNumber) ->
      denominatorEqualsZero =
        IntegerForEqualityComparator.areTwoIntegersEqual(nSecondNumber, INTEGER_DIVIDE_ZERO_VALUE)

      if denominatorEqualsZero
        throw new ArithmeticException("An attempt was made to divide by zero.")
      else
        dbQuotient = nFirstNumber / nSecondNumber
        dbRoundedQuotient = 0

        comparisonResult = ThreeWayIntegerComparator.Compare(dbQuotient, 0)

        if comparisonResult == ThreeWayIntegerComparisonResult.FirstIsLessThanSecond
          dbRoundedQuotient = Math.ceil(dbQuotient)
        else if ThreeWayIntegerComparisonResult.FirstIsGreaterThanSecond
          dbRoundedQuotient = Math.floor(dbQuotient)

        dbRoundedQuotient
