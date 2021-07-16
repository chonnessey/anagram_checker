class Anagram
  def initialize(word1, word2)
    @word1 = word1.downcase
    @word2 = word2.downcase
  end

  def anagram_checker
    vowels = ['a', 'e', 'i', 'o', 'u']
    anagram_str = ""
    word1_array = @word1.split('')
    word2_array = @word2.split('')
      if word1_array.sort == word2_array.sort
        anagram_str = "These words are anagrams!"
      elsif word1_array.include?(vowels.join)
        anagram_str = "You need to input a real word!"
      end
    return anagram_str
  end
end