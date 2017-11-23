module Algorithms
  module Strings
    class CamelCase
      def words_count(str)
        1 + str.chars.count { |c| c == c.upcase }
      end
    end
  end
end
