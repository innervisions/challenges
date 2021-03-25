class CustomSet
  def initialize(arr = [])
    @elements = arr.uniq.sort
  end

  def empty?
    elements.empty?
  end

  def contains?(item)
    elements.include?(item)
  end

  def subset?(other_set)
    elements.all? { |item| other_set.contains?(item) }
  end

  def disjoint?(other_set)
    !elements.any? { |item| other_set.contains?(item) }
  end

  def eql?(other_set)
    elements == other_set.elements
  end
  alias == eql?

  def add(item)
    elements << item unless elements.include?(item)
    elements.sort!
    self
  end

  def intersection(other_set)
    intersection_elements = []
    @elements.each do |item|
      intersection_elements << item if other_set.contains?(item)
    end
    CustomSet.new(intersection_elements)
  end

  def difference(other_set)
    CustomSet.new(@elements - other_set.elements)
  end

  def union(other_set)
    CustomSet.new(elements + other_set.elements)
  end

  protected

  attr_accessor :elements
end
