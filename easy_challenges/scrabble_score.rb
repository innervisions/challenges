class Scrabble
  def initialize(word)
    @word = word
  end

  def score
    return 0 if @word.nil?
    @word.chars.inject(0) { |score, chr| letter_score(chr) + score }
  end

  def self.score(word)
    Scrabble.new(word).score
  end

  private

  def letter_score(letter)
    case letter.upcase
    when /[AEIOULNRST]/ then 1
    when /[DG]/ then 2
    when /[BCMP]/ then 3
    when /[FHVWY]/ then 4
    when 'K' then 5
    when /[JX]/ then 8
    when /[QZ]/ then 10
    else 0
    end
  end
end
