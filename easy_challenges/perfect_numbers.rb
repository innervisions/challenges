class PerfectNumber
  def self.classify(number)
    unless number.is_a?(Integer) && number > 0
      raise StandardError, 'Not a a positive integer.'
    end
    case divisors(number).sum
    when 0...number then 'deficient'
    when number then 'perfect'
    else 'abundant'
    end
  end

  def self.divisors(number)
    divisors = []
    1.upto(number / 2) do |n|
      divisors << n if number % n == 0
    end
    divisors
  end
end
