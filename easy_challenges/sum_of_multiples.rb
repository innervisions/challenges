class SumOfMultiples
  def initialize(*set)
    @set = set.empty? ? [3, 5] : set
  end

  def to(maximum)
    @set.each_with_object([]) do |n, multiples|
      multiples << multiples_less_than(n, maximum)
    end.flatten.uniq.sum
  end

  def self.to(maximum)
    SumOfMultiples.new.to(maximum)
  end

  private

  def multiples_less_than(value, maximum)
    multiples = []
    factor = 1
    loop do
      multiple = factor * value
      break unless multiple < maximum
      multiples << multiple
      factor += 1
    end
    multiples
  end
end
