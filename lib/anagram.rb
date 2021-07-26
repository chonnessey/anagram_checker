class Anagram
  def initialize(word1, word2)
    @word1 = word1.downcase.gsub(/\W/, "")
    @word2 = word2.downcase.gsub(/\W/, "")
  end

  def anagram_checker
    anagram_str = ""
      if !/[aeiou]/.match?(@word1.split('').sort.to_s) || !/[aeiou]/.match?(@word2.split('').sort.to_s)
        anagram_str = "You need to input real words!"
      elsif @word1.split('').sort == @word2.split('').sort
        anagram_str = "These words are anagrams!"
      elsif @word1.split('').sort.any? {|letter| @word2.split('').sort.include?(letter)} == false
        anagram_str = "These words are antigrams!"
      else
        anagram_str = "These words aren't anagrams or antigrams.. boring!"
      end
    return anagram_str
  end
end