require 'pry'
class Octal
  def initialize(value)
    @octal_value = value
  end

  def to_decimal
    return 0 unless valid?
    octits = @octal_value.to_i.digits
    sum = 0
    octits.each_with_index do |octit, idx|
      sum += octit * 8**idx
    end
    sum
  end

  private

  def valid?
    @octal_value.match?(/\A[0-7]+\z/)
  end
end

