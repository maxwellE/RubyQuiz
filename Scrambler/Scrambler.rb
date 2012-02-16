class Scrambler
  def initialize(a_string)
    @ScramblerString = a_string
  end
  def string_scramble
    @ScramblerString.gsub!(/\w+{4,}/){|match| 
         temp = match[1..-2].split('').shuffle
         match[0] + temp.join("") + match[-1]
      }
  end
end

atestScram = Scrambler.new("At the end of the speech, King departed from his prepared text for a partly improvised peroration on the theme of \"I have a dream\", possibly")
puts atestScram.string_scramble