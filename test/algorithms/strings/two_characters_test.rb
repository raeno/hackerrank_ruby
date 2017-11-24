require 'test_helper'
require 'algorithms/strings/two_characters'

module Algorithms
  module Strings
    class TwoCharactersTest < TestCase
      subject { Algorithms::Strings::TwoCharacters.new }

      def test_find_longest_string
        string = "beabeefeab"
        assert_equal 5, subject.longest_alternating_two_chars_string(string)
      end

      def test_is_zero_for_same_char_string
        str = "xxxxxxxxxxxxxxxx"
        assert_equal 0, subject.longest_alternating_two_chars_string(str)
      end

      def test_is_zero_for_empty_string
        str = ""
        assert_equal 0, subject.longest_alternating_two_chars_string(str)
      end

      def test_is_two_for_string_with_no_alternation
        str = ("a".."z").to_a.join
        assert_equal 2, subject.longest_alternating_two_chars_string(str)
      end

      def test_long_string
        initial_string = "cobmjdczpffbxputsaqrwnfcweuothoygvlzugazulgjdbdbarnlffzpogdprjxvtvbmxjujeubiofecvmjmxvofejdvovtjulhhfyadr"
        assert_equal 8, subject.longest_alternating_two_chars_string(initial_string)
      end
    end
  end
end
