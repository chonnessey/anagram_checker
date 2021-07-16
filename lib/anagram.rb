class Anagram
  def initialize(word1, word2)
    @word1 = word1.downcase
    @word2 = word2.downcase
  end

  def anagram_checker
    vowels = ['a', 'e', 'i', 'o', 'u']
    i = 0
    anagram_str = ""
    word1_array = @word1.split('')
    word2_array = @word2.split('')
    until i > vowels.length
      i += 1
      puts i
      if word1_array.sort == word2_array.sort
        anagram_str = "These words are anagrams!"
      elsif word1_array !=~ (/aeiou/)
        anagram_str = "You need to input a real word!"
      end
    end
    return anagram_str
  end
end