#== Problem Info
#
# # Service Lane
# Calvin is driving his favorite vehicle on the 101 freeway. He notices that the check engine light of his vehicle is on, and he wants to service it immediately to avoid any risks. Luckily, a service lane runs parallel to the highway. The length of the service lane is NN units. The service lane consists of NN segments of equal length and different width.
# 
# Calvin can enter to and exit from any segment. Let's call the entry segment as index ii and the exit segment as index jj. Assume that the exit segment lies after the entry segment (i≤ji≤j) and 0≤i0≤i. Calvin has to pass through all segments from index ii to index jj (both inclusive).
# 
# Calvin has three types of vehicles - bike, car, and truck - represented by 11, 22 and 33, respectively. These numbers also denote the width of the vehicle.
# 
# You are given an array widthwidth of length NN, where width[k]width[k] represents the width of the kkth segment of the service lane. It is guaranteed that while servicing he can pass through at most 10001000 segments, including the entry and exit segments.
# 
# If width[k]=1width[k]=1, only the bike can pass through the kkth segment.
# If width[k]=2width[k]=2, the bike and the car can pass through the kkth segment.
# If width[k]=3width[k]=3, all three vehicles can pass through the kkth segment.
# Given the entry and exit point of Calvin's vehicle in the service lane, output the type of the largest vehicle which can pass through the service lane (including the entry and exit segments).
# 
# ## Input Format
# 
# The first line of input contains two integers, NN and TT, where NN denotes the length of the freeway and TT the number of test cases. The next line has NN space-separated integers which represent the widthwidth array.
# 
# TT test cases follow. Each test case contains two integers, ii and jj, where ii is the index of the segment through which Calvin enters the service lane and jj is the index of the lane segment through which he exits.
# 
# ## Output Format
# For each test case, print the number that represents the largest vehicle type that can pass through the service lane.
#
#====
require 'test_helper'
require 'algorithms/implementation/service_lane'

module Algorithms
  module Implementation
    class ServiceLaneTest < TestCase

      def test_calculates_largest_vehicle
        service_lane = ServiceLane.new [2,3,1,2,3,2,3,3]
        
      end
    end
  end
end
