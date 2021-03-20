class Series
  def initialize(digit_string)
    @digits = digit_string.split('').map(&:to_i)
  end

  def slices(num_digits)
    if num_digits < 0 || num_digits > @digits.size
      raise ArgumentError, 'Not a valid number of digits.'
    end
    @digits.each_cons(num_digits).to_a
  end
end
