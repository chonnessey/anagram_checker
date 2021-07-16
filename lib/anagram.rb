class Anagram
  def initialize(word1, word2)
    @word1 = word1.downcase
    @word2 = word2.downcase
  end

  def anagram_checker
    anagram_str = ""
      if @word1.gsub(/\W/, "").split('').sort == @word2.gsub(/\W/, "").split('').sort
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
    else
      anagram_checker()
    end
    return vowel_str
  end
end