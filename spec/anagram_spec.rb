require 'pry'
require 'rspec'
require 'anagram'

describe('Anagram#anagram_checker') do
  it('will check if a word is an anagram') do
    anagram = Anagram.new("act", "cat")
    expect(anagram.anagram_checker).to(eq("These words are anagrams!"))
  end
end