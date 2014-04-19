###*
# @module coffeebuzz.impl
# @submodule coffeebuzz.impl.loop
###

define (require) ->
  ThreeWayIntegerComparator =
    require "cs!../strategies/comparators/integercomparator/ThreeWayIntegerComparator"
  ThreeWayIntegerComparisonResult =
    require "cs!../strategies/comparators/integercomparator/ThreeWayIntegerComparisonResult"

  ###*
  # A loop termination condition.
  #
  # @class LoopCondition
  # @constructor
  ###
  class LoopCondition
    evaluateLoop: (nCurrentNumber, nTotalCount) ->
      comparisonResult = ThreeWayIntegerComparator.Compare(nCurrentNumber, nTotalCount)
      if comparisonResult == ThreeWayIntegerComparisonResult.FirstIsLessThanSecond
        true
      else if comparisonResult == ThreeWayIntegerComparisonResult.FirstEqualsSecond
        true
      else
        false
