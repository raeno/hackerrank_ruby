#== Problem Info
#
# ## Cut the stick
# 
# You are given NN sticks, where the length of each stick is a positive integer. A cut operation is performed on the sticks such that all of them are reduced by the length of the smallest stick.
# 
# Suppose we have six sticks of the following lengths:
#  5 4 4 2 2 8
# 
# Then, in one cut operation we make a cut of length 2 from each of the six sticks. For the next cut operation four sticks are left (of non-zero length), whose lengths are the following: 
#  3 2 2 6
# 
# The above step is repeated until no sticks are left.
# Given the length of NN sticks, print the number of sticks that are left before each subsequent cut operations.
# Note: For each cut operation, you have to recalcuate the length of smallest sticks (excluding zero-length sticks).
#
#====

require 'test_helper'
require 'algorithms/implementation/cut_the_sticks'

module Algorithms
  module Implementation
    class CutTheSticksTest < TestCase

      subject { Algorithms::Implementation::CutTheSticks.new }

      def test_cut_the_sticks_print_sticks_left_after_each_cut
        assert_output %w(6 4 2 1).on_separate_lines do
          subject.cut [5,4,4,2,2,8]
        end
      end
    end
  end
end
