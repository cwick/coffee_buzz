###*
# @module coffeebuzz.impl
# @submodule coffeebuzz.impl.strategies
###

define (require) ->
  ThreeWayIntegerComparisonResult = require "cs!./ThreeWayIntegerComparisonResult"

  ###*
  # Compares two integers.
  #
  # @class ThreeWayIntegerComparator
  ###
  class ThreeWayIntegerComparator
    ###*
    # Compares two integers and returns the comparison results
    #
    # @static
    # @method Compare
    # @param {Number} nFirstInteger the first integer to compare
    # @param {Number} nSecondInteger the second integer to compare
    # @return {ThreeWayIntegerComparisonResult} the comparison result
    ###
    @Compare: (nFirstInteger, nSecondInteger) ->
      if nFirstInteger == nSecondInteger
        ThreeWayIntegerComparisonResult.FirstEqualsSecond
      else if nFirstInteger < nSecondInteger
        ThreeWayIntegerComparisonResult.FirstIsLessThanSecond
      else if nFirstInteger > nSecondInteger
        ThreeWayIntegerComparisonResult.FirstIsGreaterThanSecond
      else
        # If the integers cannot be compared, then something is seriously wrong with the numbers.
        throw new Error("The integers could not be compared.")
