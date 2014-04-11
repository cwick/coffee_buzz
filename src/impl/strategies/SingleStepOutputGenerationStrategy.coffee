###*
# @module coffeebuzz.impl
# @submodule coffeebuzz.impl.strategies
###

define (require) ->
  FizzStrategyFactory = require "cs!../factories/FizzStrategyFactory"

  ###*
  # Generates output for the current loop step.
  #
  # @class SingleStepOutputGenerationStrategy
  # @constructor
  ###
  class SingleStepOutputGenerationStrategy
    constructor: ->
      myFizzStrategyFactory = new FizzStrategyFactory()
      @myFizzStrategy = myFizzStrategyFactory.createIsEvenlyDivisibleStrategy()
      myFizzStringPrinterFactory = new FizzStringPrinterFactory()
      @myFizzStringPrinter = myFizzStringPrinterFactory.createStringPrinter()

      myBuzzStrategyFactory = new BuzzStrategyFactory()
      @myBuzzStrategy = myBuzzStrategyFactory.createIsEvenlyDivisibleStrategy()
      myBuzzStringPrinterFactory = new BuzzStringPrinterFactory()
      @myBuzzStringPrinter = myBuzzStringPrinterFactory.createStringPrinter()

      myNoFizzNoBuzzStrategyFactory = new NoFizzNoBuzzStrategyFactory()
      @myNoFizzNoBuzzStrategy = myNoFizzNoBuzzStrategyFactory.createIsEvenlyDivisibleStrategy()
      myIntIntegerPrinterFactory = new IntIntegerPrinterFactory()
      @myIntIntegerPrinter = myIntIntegerPrinterFactory.createPrinter()

      myNewLineStringPrinterFactory = new NewLineStringPrinterFactory()
      @myNewLinePrinter = myNewLineStringPrinterFactory.createStringPrinter()

    ###*
    # Generates output for the current loop step.
    #
    # @method performGenerationForCurrentStep
    # @param {SingleStepOutputGenerationParameter} generationParameter the parameter representing the current loop step
    ###
    performGenerationForCurrentStep: (generationParameter) ->
      nGenerationParameter = generationParameter.retrieveIntegerValue()

      if @myFizzStrategy.isEvenlyDivisible(nGenerationParameter)
        @myFizzStringPrinter.print()

      if @myBuzzStrategy.isEvenlyDivisible(nGenerationParameter)
        @myBuzzStringPrinter.print()

      if @myNoFizzNoBuzzStrategy.isEvenlyDivisible(nGenerationParameter)
        @myIntIntegerPrinter.printInteger(nGenerationParameter)

      @myNewLinePrinter.print()
