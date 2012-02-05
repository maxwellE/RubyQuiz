require "test/unit"

require "~/Desktop/Ruby Quiz/MadLibs"

class TestMadLibs < Test::Unit::TestCase
  def test_make_hash
    a_mad_lib_hash = MadLibs.new("Our favorite language is ((gem:a gemstone)). We think ((gem)) is better
    than ((a gemstone)).")
    assert_equal({"gem" => "", "a gemstone" => ""},a_mad_lib_hash.get_hash_of_words)  
  end
  def test_finalize
    a_mad_lib_hash = MadLibs.new("Our favorite language is ((gem:a gemstone)). We think ((gem)) is better
    than ((a gemstone)).")
    fill_hash = {"gem" => "Dog", "a gemstone" => "Cat"}
   assert_equal( "Our favorite language is Dog. We think Dog is better
    than Cat.", a_mad_lib_hash.finalize)
  end
  def test_prompt_user
    test_string = prompt_user("Dog")
    enters
    assert_equal(test_string, "Rock")
  end
end
