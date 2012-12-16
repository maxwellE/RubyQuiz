#!/usr/bin/ruby
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
    sum_hash.each_pair do |k,v|
      next if v.size < @people
      v.combination(@people).each{|x|return x if x.flatten.sort == @values.sort && x.size == @people}
    end
    return nil
  end

  def find_solution
    output = ""
    begin
    evaluate.each_with_index do |e,i|
      output << "#{i+1}: #{e.join(', ')}\n"
    end
    rescue NoMethodError
      output = "It is not possible to fairly split this treasure #{@people} way(s)."
    end
    output
  end
end

def main
  puts Loot.new(ARGV.map{|x| x.to_i}).find_solution
end

if $0 == __FILE__
  main
end
