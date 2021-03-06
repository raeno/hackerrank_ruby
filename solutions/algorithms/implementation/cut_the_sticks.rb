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

module Algorithms
  module Implementation
    class CutTheSticks

      def cut(sticks)
        until sticks.empty? do
          puts sticks.size
          cut_length = sticks.min
          sticks = sticks.map { |el| el - cut_length }.select { |el| el > 0 } 
        end 
      end
    end
  end
end

def run
  _ = gets
  arr = gets.strip.split(' ').map(&:to_i)
  Algorithms::Implementation::CutTheSticks.new.cut(arr)
end

run unless ENV['TEST']
