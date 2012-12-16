require "test/unit"
require_relative 'prime_finder'
class PrimeFinderTest < Test::Unit::TestCase
  def setup
    @pf = PrimeFinder.new(1,5)
    @pf2 = PrimeFinder.new(7,16)
  end
  def test_should_get_the_correct_primes
    assert_equal([1,2,3,5],@pf.get_primes)
    assert_equal([7,11,13],@pf2.get_primes)
  end
end
