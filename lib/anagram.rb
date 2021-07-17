class Anagram
  def initialize(word1, word2)
    @word1 = word1.downcase
    @word2 = word2.downcase
  end

  def anagram_checker
    anagram_str = ""
      if @word1.gsub(/\W/, "").split('').sort == @word2.gsub(/\W/, "").split('').sort
        anagram_str = "These words are anagrams!"
      else
        vowel_checker()
        antigram_checker()
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
      antigram_checker()
    end
    return vowel_str
  end

  def antigram_checker
    antigram1_array = []
    antigram2_array = []
    word1_array = @word1.split('')
    word2_array = @word2.split('')
    antigram_str = ""
    word1_array.each do |letter|
      antigram1_array << letter.scan(/[a-zA-Z]/).to_s
      word2_array.each do |element|
        antigram1_array << letter.scan(/[a-zA-Z]/).to_s
        if antigram1_array != antigram2_array
          antigram_str = "These words are an antigram!"
        else
          anagram_checker()
          vowel_checker()
        end
      end
    end
    return antigram_str
  end
end