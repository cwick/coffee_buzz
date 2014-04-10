###*
# @module coffeebuzz.impl
# @submodule coffeebuzz.impl.strategies
###

define (require) ->
  FizzBuzzSolutionStrategy = require "cs!../../interfaces/strategies/FizzBuzzSolutionStrategy"
  LoopContext = require "cs!../loop/LoopContext"

  ###*
  # An Enterprise-grade implementation of {{#crossLink "FizzBuzzSolutionStrategy"}}{{/crossLink}}.
  #
  # @class EnterpriseGradeFizzBuzzSolutionStrategy
  # @constructor
  # @extends FizzBuzzSolutionStrategy
  ###
  class EnterpriseGradeFizzBuzzSolutionStrategy extends FizzBuzzSolutionStrategy
    runSolution: (nFizzBuzzUpperLimit) ->
      loopContext = new LoopContext(nFizzBuzzUpperLimit)
      stepPayload = new SingleStepPayload()
      loopRunner = new LoopRunner(loopContext, loopContext, stepPayload)
      loopRunner.runLoop()



