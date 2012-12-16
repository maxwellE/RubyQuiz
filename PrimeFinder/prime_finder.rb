#!/usr/bin/env ruby
require 'mathn'
class PrimeFinder
  def initialize(low_bound,upper_bound)
    @low_bound = low_bound
    @upper_bound = upper_bound
    @primes = nil
  end
  def get_primes
    return @primes if @primes
    @primes = []
    @low_bound.upto(@upper_bound) do |val|
      @primes.push val if is_prime?(val)
    end
    @primes
  end
  private
  def is_prime?(val)
    val.prime?
  end
end
def main
  pf = PrimeFinder.new(ARGV[0].to_i, ARGV[1].to_i)
  puts "All Primes from #{ARGV[0]} to #{ARGV[1]}"
  pf.get_primes.each do |x|
    puts x
  end
end
if $0 == __FILE__
  main
end
