###*
# @module coffeebuzz.interfaces
# @submodule coffeebuzz.interfaces.strategies
###

###*
# A strategy for determining if a number is evenly divisible by another.
#
# @class IsEvenlyDivisibleStrategy
###
define ->\
class IsEvenlyDivisibleStrategy
  ###*
  # Determines if the number associated with this strategy is evenly divisble by another given number.
  #
  # @method isEvenlyDivisible
  # @param {Number} theInteger the number used to determine whether the current number is evenly divisible.
  # @return {Boolean} true if the current number is evenly divisible by the given number, false otherwise.
  ###
  isEvenlyDivisible: (theInteger) ->



