class Anagram
  def initialize(word1, word2)
    @word1 = word1.downcase
    @word2 = word2.downcase
  end

  def anagram_checker
    anagram_str = ""
    word1_array = @word1.split('')
    word2_array = @word2.split('')

    if word1_array.sort == word2_array.sort
      anagram_str = "These words are anagrams!"
    end
    return anagram_str
  end
end