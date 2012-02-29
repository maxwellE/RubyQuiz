#!/usr/bin/env ruby -wKU
class RomanNumeralParser
  def initialize(value)
    if value.is_a? Integer
      @integer = value
    else
       @roman_numeral = value
       @roman_integer = {
         1 => 'I'
         5 => 'V'
         10 => 'X'
         50 = 'L'
       }
    end
  end
  def to_arabic
    if @integer.nil?
      numerals = @roman_numeral.split('')
      return numerals.inject(0) { |sum, numeral| sum += int_val(numeral) }
    else
      return @integer
    end
  end
  def to_roman
    if @roman_numeral.nil?
      
    else
      @roman_numeral
    end
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