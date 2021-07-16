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
      elsif @word1.(/\W/) == @word2.(/\W/)
        anagram_str = "These words are anagrams!"
      end
    return anagram_str
  end

  def vowel_checker
    vowel_check_one = @word1.match(/aeiou/)
    vowel_check_two = @word2.match(/aeiou/)
    vowel_str = ""
    if (vowel_check_one === nil) or (vowel_check_two === nil)
      vowel_str = "You need to input real words!"
    end
  end
end

# (@word1 =~ /[aeiouy]/i) && (@word2 =~ /[aeiouy]/i)