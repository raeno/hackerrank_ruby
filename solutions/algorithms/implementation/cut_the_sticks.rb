#!/bin/ruby

# You are given NN sticks, where the length of each stick is a positive integer. A cut operation is performed on the sticks such that all of them are reduced by the length of the smallest stick.

# Suppose we have six sticks of the following lengths:
# 5 4 4 2 2 8

# Then, in one cut operation we make a cut of length 2 from each of the six sticks. For the next cut operation four sticks are left (of non-zero length), whose lengths are the following: 
# 3 2 2 6

# The above step is repeated until no sticks are left.

# Given the length of NN sticks, print the number of sticks that are left before each subsequent cut operations.

# Note: For each cut operation, you have to recalcuate the length of smallest sticks (excluding zero-length sticks).

_ = gets
arr = gets.strip
arr = arr.split(' ').map(&:to_i)

until arr.empty? do
    puts arr.size
    cut_length = arr.min
    arr = arr.map { |el| el - cut_length }.select { |el| el > 0 } 
end
