#== Problem Info
#
# Little Bob loves chocolate, and he goes to a store with $N$N in his pocket. The price of each chocolate is $C$C. The store offers a discount: for every MM wrappers he gives to the store, he gets one chocolate for free. How many chocolates does Bob get to eat?
# 
# Input Format: 
# The first line contains the number of test cases, TT. 
# TT lines follow, each of which contains three integers, NN, CC, and MM.
# 
# Output Format: 
# Print the total number of chocolates Bob eats.
#
#====

require 'test_helper'
require 'algorithms/implementation/chocolate_feast'

module Algorithms
  module Implementation

    class ChocolateFeastTest < TestCase

      subject { Algorithms::Implementation::ChocolateFeast.new }

      def test_prints_eaten_chocolates_for_each_test_case
        VirtualInput.with_fake_input ["3", "10 2 5", "12 4 4", "6 2 2"]  do
          assert_output %w(6 3 5).on_separate_lines do
            subject.run
          end
        end
      end

      def test_count_chocolates_when_no_wrappers_bonus
        assert_equal 3, subject.count_chocolates(12,4,10)
      end

      def test_count_chocolates_when_single_wrapper_bonus
        assert_equal 4, subject.count_chocolates(14,4,3)
      end

      def test_count_chocolates_when_wrapper_exchanged_multiple_times
        assert_equal 5, subject.count_chocolates(6,2,2)
      end

      def test_some_testcases_from_hackerrank
        inputs = File.read(fixture_path('chocolate_feast_input_1.txt')).split("\n").map(&:chomp)[1..-1]
        outputs = File.read(fixture_path('chocolate_feast_output_1.txt')).split("\n").map(&:chomp).map(&:to_i)
        inputs.each_with_index do |input, index|
          money, price, bonus = input.split(' ').map(&:to_i)
          assert_equal outputs[index], subject.count_chocolates(money, price, bonus)
        end
      end
    end
  end
end
