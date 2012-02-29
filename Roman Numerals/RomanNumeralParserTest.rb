require "test/unit"

require_relative "RomanNumeralParser"

class TestRomanNumeralParser < Test::Unit::TestCase
  def setup
    @rnVIII = RomanNumeralParser.new("VIII")
    @rnVII = RomanNumeralParser.new("VII")
    @rnXXXVIII = RomanNumeralParser.new("XXXVIII")
    @ab28 = RomanNumeralParser.new(28)
    @ab6 = RomanNumeralParser.new(6)
  end
  def test_intialize
    assert_equal("VIII",@rnVIII.to_roman)
  end
  def test_to_arabic_simple
    assert_equal(7, @rnVII.to_arabic)
  end
  def test_to_arabic_complex
    assert_equal(38, @rnXXXVIII.to_arabic)
  end
  def test_to_roman_simple
    assert_equal(6, @ab6.to_roman)
  end
end