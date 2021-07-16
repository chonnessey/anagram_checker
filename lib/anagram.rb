class Anagram
  def initialize(word1, word2)
    @word1 = word1.downcase
    @word2 = word2.downcase
  end

  def anagram_checker
    anagram_str = ""

    if @word1.split('').sort == @word2.split('').sort
      anagram_str = "These words are anagrams!"
    end
    return anagram_str
  end
end