class FizzBuzzer
  def initialize(lowerBound,upperBound)
    @lowerBound = lowerBound
    @upperBound = upperBound
  end
  def create_output
    output =""
    @lowerBound.upto(@upperBound) { |anInt|
      if(anInt % 15 == 0)
        output << "FizzBuzz\n"
      elsif(anInt % 5 == 0)
        output << "Buzz\n"
      elsif(anInt % 3 == 0)
        output << "Fizz\n"
      else
        output << (anInt.to_s + "\n")
      end
    }
    return output
  end
end
testFizzBuzz = FizzBuzzer.new(1,100)
puts testFizzBuzz.create_output