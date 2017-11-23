require 'test_helper'
require 'algorithms/sorting/insertion_sort_part_2'

module Algorithms
  module Sorting
    class InsertionSortPart2Test < TestCase
      subject { Algorithms::Sorting::InsertionSortPart2.new}

      def test_sort_passed_array
        assert_equal [1,2,3,4,5,6], subject.sort([2,5,3,1,6,4])
      end

      def test_works_with_empty_array
        assert_equal [], subject.sort([])
      end

      def test_changes_nothing_in_sorted_array
        assert_equal [1,2,3,4,6], subject.sort([1,2,3,4,6])
      end
    end
  end
end
