class Anagram
  def initialize(word)
    @word = word
  end

  def match(words)
    words.each_with_object([]) do |el, anagrams|
      anagrams << el if @word.downcase.chars.sort == el.downcase.chars.sort &&
                        @word.downcase != el.downcase
    end
  end
end
