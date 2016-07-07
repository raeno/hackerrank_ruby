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

require 'test_helper'
require 'algorithms/implementation/divisible_sum_pairs'

module Algorithms
  module Implementation
    class DivisibleSumPairsTest < TestCase
      subject { Algorithms::Implementation::DivisibleSumPairs.new }

      def test_count_pairs_produce_correct_amount
        numbers = [1,3,2,6,1,2]
        pairs_count = subject.count_pairs(numbers, 3)
        assert_equal 5, pairs_count
      end
    end
  end
end
