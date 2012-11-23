require "test/unit"

require_relative "anagram"

class TestAnagram < Test::Unit::TestCase
  def setup
    @anagram = Anagram.new(['dog','god','gdo', 'cat','tac','zat'])
  end
  def test_create_pairs
    assert_equal({["d", "g", "o"]=>["dog", "god", "gdo"],
     ["a", "c", "t"]=>["cat", "tac"],
     ["a", "t", "z"]=>["zat"]}, @anagram.create_pairs)
  end
end