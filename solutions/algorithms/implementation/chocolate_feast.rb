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

module Algorithms
  module Implementation
    class ChocolateFeast
      def run
        test_cases = gets.to_i
        test_cases.times do
          money, price, wrappers_for_bonus = gets.split(' ').map(&:to_i)
          puts count_chocolates money, price, wrappers_for_bonus
        end
      end

      def count_chocolates(money, price, wrappers_for_candie)
        candies = money.div price
        wrappers = candies
        until wrappers < wrappers_for_candie do
          bonus_candies, left_wrappers = wrappers.divmod wrappers_for_candie
          candies += bonus_candies
          wrappers = left_wrappers + bonus_candies
        end
        candies
      end
    end
  end
end

Algorithms::Implementation::ChocolateFeast.new.run unless ENV['TEST']
