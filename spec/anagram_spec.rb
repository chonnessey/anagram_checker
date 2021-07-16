require 'pry'
require 'rspec'
require 'anagram'

describe('Anagram#anagram_checker') do
  it('will check if two words are an anagram') do
    anagram = Anagram.new("act", "cat")
    expect(anagram.anagram_checker).to(eq("These words are anagrams!"))
  end

  it('will check if two words are an anagram regardless of case') do
    anagram2 = Anagram.new("Act", "cAt")
    expect(anagram2.anagram_checker).to(eq("These words are anagrams!"))
  end

  it('will check if two words are valid by checking for vowels') do
    anagram3 = Anagram.new("pkmn", "nmkp")
    expect(anagram3.vowel_checker).to(eq("You need to input real words!"))
  end

  it('will check if two words are anagrams regardless of spaces and punctuation') do
    anagram4 = Anagram.new("The Morse Code", "Here come dots!")
    expect(anagram4.anagram_checker).to(eq("These words are anagrams!"))
  end
end