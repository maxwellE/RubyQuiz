class MadLibs
  def initialize(input_string)
   @mad_string = input_string
  end
  def get_words #performs the neccesary IO to load @word_array
    @prompt_hash = {}
    @mad_string.scan(/\(\(([^)]+)\)\)/).each do |string|
      string[0].split(':').each do |substring| 
        if @prompt_hash[substring] == nil
          @prompt_hash[substring] = prompt_user(substring)
        end
      end
    end
  end
  def prompt_user(a_key)
    puts "I need a value for #{a_key}:"
    gets.strip
  end
  def finalize(override_hash=nil)
    @mad_string.gsub!(/\(\(([^)]+)\)\)/){ |match|
      puts match
    }
    return @mad_string
  end
  def get_hash_of_words
    word_hash = {}
    @mad_string.scan(/\(\(([^)]+)\)\)/).each do |string|
      string[0].split(':').each do |substring| 
        if !word_hash.has_key?(substring)
          word_hash[substring] = ""
        end
      end
    end
    return word_hash
  end
end




