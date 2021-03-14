class RomanNumeral
  ONES = ['', 'I', 'II', 'III', 'IV', 'V', 'VI', 'VII', 'VIII', 'IX']
  TENS = ['', 'X', 'XX', 'XX', 'XL', 'L', 'LX', 'LXX', 'LXXX', 'XC']
  HUNDREDS = ['', 'C', 'CC', 'CCC', 'CD', 'D', 'DC', 'DCC', 'DCCC', 'CM']
  THOUSANDS = ['', 'M', 'MM', 'MMM']
  def initialize(value)
    @value = value
  end

  def to_roman
    roman_numeral = ''
    digits = @value.digits
    digits.each_with_index do |digit, idx|
      roman_numeral = digit_array(idx + 1)[digit] + roman_numeral
    end
    roman_numeral
  end

  private

  def digit_array(digit)
    case digit
    when 1 then ONES
    when 2 then TENS
    when 3 then HUNDREDS
    when 4 then THOUSANDS
    end
  end
end

p RomanNumeral.new(59).to_roman
