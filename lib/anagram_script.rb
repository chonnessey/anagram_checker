#!/usr/bin/ruby

require('./lib/anagram.rb')

puts "Enter two words or phrases to see if they are either an anagram or an antigram!"
puts "Word(s) or Phrase One:"
input1 = gets.chomp
puts "Word(s) or Phrase Two:"
input2 = gets.chomp

ana_v_anti = Anagram.new("#{input1}", "#{input2}")

ava_v_anti.anagram_checker()

