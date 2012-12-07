require 'pry'
class Loot
  def initialize(values)
    @values = values
    @people = @values.shift
  end

  def evaluate
    sum_hash = {}
    (@values.size.downto(1)).each do |size|
      sum_hash.merge!(@values.combination(size).group_by{|x| x.reduce(:+)}) 
    end
    sol_ary = sum_hash.each_pair do |k,v|
      next if v.size < @people
      v.combination(@people).each{|x|return x if x.flatten.sort == @values.sort && x.size == @people}
    end
  end

  def find_solution
    evaluate.each_with_index do |e,i|
      puts "#{i+1}: #{e.join(', ')}"
    end
  end
end
