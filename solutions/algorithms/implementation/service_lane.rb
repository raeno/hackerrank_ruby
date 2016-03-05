#!/bin/ruby

n,cases = gets.strip.split(' ').map(&:to_i)
width = gets.strip
width = width.split(' ').map(&:to_i)
(0..cases-1).each do
  i,j = gets.strip.split(' ').map(&:to_i)
  puts width[(i..j)].min
end
