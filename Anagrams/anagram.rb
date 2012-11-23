# Facebook interview question
# Given a list of words group them by anagram, i.e. cat and tac go togther but
# zat and cat do not
# test files contain additional examples.
class Anagram
  def initialize(words)
    @words = words
  end
  
  def create_pairs
     @words.group_by{|word| word.split('').sort}
  end
end