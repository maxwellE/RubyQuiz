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
