###*
# @module coffeebuzz.impl
# @submodule coffeebuzz.impl.strategies
###

define (require) ->
  ThreeWayIntegerComparator = require "cs!./ThreeWayIntegerComparator"
  ThreeWayIntegerComparisonResult = require "cs!./ThreeWayIntegerComparisonResult"

  ###*
  # Compares two integers for equality
  #
  # @class IntegerForEqualityComparator
  ###
  class IntegerForEqualityComparator
    ###*
    # Compares two integers for equality.
    #
    # @static
    # @method areTwoIntegersEqual
    # @param {Number} nFirstInteger the first integer to compare
    # @param {Number} nSecondInteger the second integer to compare
    # @return {Boolean} the comparison result; true if the integers are equal, false otherwise
    ###
    @areTwoIntegersEqual: (nFirstInteger, nSecondInteger) ->
      comparisonResult = ThreeWayIntegerComparator.Compare(nFirstInteger, nSecondInteger)
      if comparisonResult == ThreeWayIntegerComparisonResult.FirstEqualsSecond
        true
      else
        false
