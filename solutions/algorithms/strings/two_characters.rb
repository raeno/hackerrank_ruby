module Algorithms
  module Strings
    class TwoCharacters
      def longest_alternating_two_chars_string(s)
        present_chars = s.chars.uniq
        return 0 if present_chars.length < 2
        results = present_chars.combination(2).map do |first, second|
          new_string = s.chars.select { |c| c == first || c == second }
          is_valid = (0..new_string.length-2).all? do |i|
            new_string[i] != new_string[i+1]
          end
          is_valid ? new_string.length : 0
        end
        results.max
      end
    end
  end
end
