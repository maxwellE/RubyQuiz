require "test/unit"

require_relative "RomanNumeralParser"

class TestRomanNumeralParser < Test::Unit::TestCase
  def test_intialize
    rnp = RomanNumeralParser.new("VIII")
    assert_equal("VIII",rnp.roman_numeral)
  end
  def test_to_arabic_simple
    rnp = RomanNumeralParser.new("VII")
    assert_equal(7, rnp.to_arabic)
  end
  def test_to_arabic_complex
    rnp = RomanNumeralParser.new("XXXVIII")
    assert_equal(38, rnp.to_arabic)
  end
end