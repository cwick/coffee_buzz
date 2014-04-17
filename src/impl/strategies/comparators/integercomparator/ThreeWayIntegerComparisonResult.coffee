###*
# @module coffeebuzz.impl
# @submodule coffeebuzz.impl.strategies
###

define ->
  ###*
  # The result of doing a three-way integer comparison.
  #
  # @class ThreeWayIntegerComparisonResult
  ###
  {
    FirstIsLessThanSecond: 0
    FirstEqualsSecond: 1
    FirstIsGreaterThanSecond: 2
  }
