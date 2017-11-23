module Algorithms
  module Sorting
    class InsertionSortPart2
      def sort(arr)
        (1..arr.length-1).each do |position|
          sort_element_at(arr, position)
        end
        arr
      end

      private

      def sort_element_at(array, position)
        element = array[position]
        i = position - 1
        while element < array[i] && i >= 0
          array[i+1] = array[i]
          i -= 1
        end
        array[i+1] = element
      end
    end
  end
end
