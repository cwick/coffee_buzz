###*
# @module coffeebuzz.impl
###

define (require) ->
  EnterpriseGradeFizzBuzzSolutionStrategyFactory = require "cs!./factories/EnterpriseGradeFizzBuzzSolutionStrategyFactory"

  ###*
  # The main FizzBuzz class.
  #
  # @class FizzBuzz
  ###
  class FizzBuzz
    ###*
    # Runs FizzBuzz.
    #
    # @method fizzbuzz
    # @param {Number} nFizzBuzzUpperLimit the upper limit, inclusive, to which to run the solution. This is the highest number the FizzBuzz algorithm will count up to before stopping.
    ###
    fizzbuzz: (nFizzBuzzUpperLimit) ->
      mySolutionStrategyFactory = new EnterpriseGradeFizzBuzzSolutionStrategyFactory()
      mySolutionStrategy = mySolutionStrategyFactory.createFizzBuzzSolutionStrategy()
      mySolutionStrategy.runSolution(nFizzBuzzUpperLimit)

