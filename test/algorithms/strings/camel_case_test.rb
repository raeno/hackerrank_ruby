require 'test_helper'
require 'algorithms/strings/camel_case'

module Algorithms
  module Strings
    class CamelCaseTest < TestCase
      subject { Algorithms::Strings::CamelCase.new }

      def test_count_words_in_camel_case
        string = "inTheWorldWeBelieveALot"
        assert_equal 7, subject.words_count(string)
      end

      def test_works_with_one_word
        string = "mama"
        assert_equal 1, subject.words_count(string)
      end
    end
  end
end
