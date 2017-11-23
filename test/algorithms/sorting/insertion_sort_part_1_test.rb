#== Problem Info
#
# # Insertion sorting - Part 1
# ## Sorting 
# One common task for computers is to sort data. For example, people might want to see all their files on a computer sorted by size. Since sorting is a simple problem with many different possible solutions, it is often used to introduce the study of algorithms.
# 
# ## Insertion Sort # These challenges will cover Insertion Sort, a simple and intuitive sorting algorithm. We will first start with an already sorted list.
# 
# ## Insert element into sorted list 
# Given a sorted list with an unsorted number ee in the rightmost cell, can you write some simple code to insert ee into the array so that it remains sorted?
# 
# Print the array every time a value is shifted in the array until the array is fully sorted. The goal of this challenge is to follow the correct order of insertion sort
# 
# ## Input Format 
# There will be two lines of input:
# * Size - the size of the array
# * Arr - the unsorted array of integers
# 
# ## Output Format 
# On each line, output the entire array every time an item is shifted in it.
#
#====

require 'test_helper'
require 'algorithms/sorting/insertion_sort_part_1'

module Algorithms
  module Sorting
    class InsertionSortPart1Test < TestCase
      subject { Algorithms::Sorting::InsertionSortPart1.new }

      def test_inserts_unsorted_value_in_right_place
        assert_equal [2,3,4,6,8], subject.insertion_sort([2,4,6,8,3 ])
      end

      def test_moves_1_to_beginning
        initial_array = [2,3,4,5,6,7,8,9,10,1]
        assert_equal (1..10).to_a, subject.insertion_sort(initial_array)
      end
    end
  end
end
