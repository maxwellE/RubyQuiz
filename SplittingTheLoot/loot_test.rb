require "test/unit"
require_relative 'loot'
class LootTest < Test::Unit::TestCase
  def setup
    @loot_bad = Loot.new([3, 1, 2, 3, 4])
    @loot_good = Loot.new([2, 9, 12, 14, 17, 23, 32, 34, 40, 42, 49])
  end
  def test_should_not_work_for_bad_loot
    assert_equal(@loot_bad.evaluate,nil)
  end
  def test_should_work
     @loot_good.find_solution
  end
end
