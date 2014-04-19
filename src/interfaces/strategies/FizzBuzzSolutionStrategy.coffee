###*
# @module coffeebuzz.interfaces
# @submodule coffeebuzz.interfaces.strategies
###

###*
# An interface that runs the FizzBuzz algorithm.
#
# @class FizzBuzzSolutionStrategy
###
define ->\
class FizzBuzzSolutionStrategy
  ###*
  # Runs the FizzBuzz solution and outputs the final results.
  #
  # @method runSolution
  # @param {Number} nFizzBuzzUpperLimit the upper limit, inclusive,
  #   to which to run the solution. This is the highest number the FizzBuzz
  #   algorithm will count up to before stopping.
  ###
  runSolution: (nFizzBuzzUpperLimit) ->


