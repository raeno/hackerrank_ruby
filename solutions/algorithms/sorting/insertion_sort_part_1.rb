#== Problem Info
#
# # Insertion sorting - Part 1
# ## Sorting 
# One common task for computers is to sort data. For example, people might want to see all their files on a computer sorted by size. Since sorting is a simple problem with many different possible solutions, it is often used to introduce the study of algorithms.
# 
# ## Insertion Sort 
# These challenges will cover Insertion Sort, a simple and intuitive sorting algorithm. We will first start with an already sorted list.
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

module Algorithms
  module Sorting
    class InsertionSortPart1
      def insertion_sort(ar)
        current = ar.last
        i = ar.length - 2
        while current < ar[i] && i >= 0
          ar[i+1] = ar[i]
          i -= 1
          puts ar.join(' ')
        end
        ar[i+1] = current
        puts ar.join(' ')
        ar
      end
    end
  end
end
