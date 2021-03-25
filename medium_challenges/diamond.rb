class Diamond
  def initialize(letter)
    @middle_letter = letter
    @length = 2 * (letter.ord - 'A'.ord) + 1
  end

  def make
    diamond = make_line('A')
    return diamond if @middle_letter == 'A'
    'B'.upto(@middle_letter) { |l| diamond << make_line(l) }
    ('A'...@middle_letter).to_a.reverse.each { |l| diamond << make_line(l) }
    diamond
  end

  def self.make_diamond(letter)
    Diamond.new(letter).make
  end

  private

  def make_line(letter)
    return 'A'.center(@length) + "\n" if letter == 'A'
    spaces = ' ' * (2 * (letter.ord - 'B'.ord) + 1)
    "#{letter}#{spaces}#{letter}".center(@length) + "\n"
  end
end
