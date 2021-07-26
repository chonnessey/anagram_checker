require 'pry'
require 'rspec'
require 'anagram'

describe('Anagram#anagram_checker') do
  it('will check if two words are valid by checking for vowels') do
    anagram = Anagram.new("BcD", "cBD")
    expect(anagram.anagram_checker).to(eq("You need to input real words!"))
  end

  it('will check if two words are an anagram') do
    anagram = Anagram.new("act", "cat")
    expect(anagram.anagram_checker).to(eq("These words are anagrams!"))
  end

  it('will check if two words are an anagram regardless of case') do
    anagram = Anagram.new("CaT", "AcT")
    expect(anagram.anagram_checker).to(eq("These words are anagrams!"))
  end


  # it('will check if two words are an anagram regardless of case and filter out words with no vowels') do
  #   anagram = Anagram.new("BcD", "cBd")
  #   anagram.vowel_checker()
  #   expect(anagram.anagram_checker).to(eq("These phrases are anagrams.. but you need to input real words!"))
  # end

  # it('will check if two words are valid by checking for vowels') do
  #   anagram = Anagram.new("pkmn", "nmkp")
  #   expect(anagram.vowel_checker).to(eq("You need to input real words!"))
  # end

  # it('will check if two words are anagrams regardless of spaces and punctuation') do
  #   anagram = Anagram.new("The Morse Code", "Here come dots!")
  #   expect(anagram.anagram_checker).to(eq("These words are anagrams!"))
  # end

  # it('will check if two words are antigrams regardless of spaces and punctuation') do
  #   anagram = Anagram.new("Hey hEy", "cooL CoOl")
  #   expect(anagram.antigram_checker).to(eq("These words are an antigram!"))
  # end
end