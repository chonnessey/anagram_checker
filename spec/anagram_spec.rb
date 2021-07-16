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
    expect(anagram3.anagram_checker).to(eq("These words are not anagrams :( "))
  end
end