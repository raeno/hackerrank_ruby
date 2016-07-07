#== Problem Info
#
# ## Divisible Sum Pairs
# 
# You're given an array of n integers and a positive integer k. Find and print
# the number of (i, j) pairs where i < j and a_i + a_j is even divisible by k.
# 
# ### Input:
# First line contains n and k. Second line contains n space-separated integers
#
#====

module Algorithms
  module Implementation
    class DivisibleSumPairs
      def count_pairs(numbers, k)
        numbers.combination(2).select { |a,b| (a+b).modulo(k) == 0}.count
      end
    end
  end
end

def run
  _, k = gets.strip.split(' ').map(&:to_i)
  numbers = gets.strip.split(' ').map(&:to_i)
  puts Algorithms::Implementation::DivisibleSumPairs.new.count_pairs(numbers, k)
end

run unless ENV['TEST']
