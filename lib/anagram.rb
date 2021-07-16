class Anagram
  def initialize(word1, word2)
    @word1 = word1.split('')
    @word2 = word2.split('')
  end

  def anagram_checker
    anagram_str = ""
    if @word1.sort == @word2.sort
      anagram_str = "These words are anagrams!"
    end
    return anagram_str
  end
end