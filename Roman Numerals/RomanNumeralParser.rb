#!/usr/bin/env ruby -wKU
class RomanNumeralParser
  attr_accessor :roman_numeral
  def initialize(numeral_string)
    @roman_numeral = numeral_string
  end
  def to_arabic
    numerals = @roman_numeral.split('')
    numerals.inject(0) { |sum, numeral| sum += int_val(numeral) }
  end
  protected
  def int_val(a_numeral)
    value = case a_numeral
      when "V" then 5
      when "I" then 1
      when "X" then 10
    end
  end
end