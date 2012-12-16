require "test/unit"
require_relative 'loot'
class LootTest < Test::Unit::TestCase
  def setup
    @loot_bad = Loot.new([3, 1, 2, 3, 4])
    @loot_good = Loot.new([2, 9, 12, 14, 17, 23, 32, 34, 40, 42, 49])
  end
  def test_should_not_work_for_bad_loot
    assert_equal(nil,@loot_bad.evaluate)
  end
  def test_should_work
     assert_equal([[9, 12, 32, 34, 49],[14, 17, 23, 40, 42]],@loot_good.evaluate)
  end
end
