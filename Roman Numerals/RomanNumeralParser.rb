#!/usr/bin/env ruby -wKU
class RomanNumeralParser
  def initialize(value)
        @ROMAN_INTEGER = {
           1 => 'I',
           5 => 'V',
           10 => 'X',
           50 => 'L'
         }
    if value.is_a? Integer
      @integer = value
    else
       @roman_numeral = value
   
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
      target = @integer
      @roman_numeral = ""
      @ROMAN_INTEGER.keys.sort { |a, b| b <=> a }.inject("") do |roman, div|
        times, target = target.divmod(div)
        @roman_numeral << @ROMAN_INTEGER[div] * times
      end
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
      when "L" then 50
    end
  end
end