class Triangle
  def initialize(a, b, c)
    @sides = [a, b, c].sort
    raise ArgumentError, 'Not a valid triangle.' unless valid?
  end

  def kind
    return 'equilateral' if equilateral?
    return 'isosceles' if isosceles?
    'scalene'
  end

  private

  def valid?
    @sides.all? { |side| side > 0 } &&
      @sides[0] + @sides[1] > @sides[2]
  end

  def equilateral?
    @sides[0] == @sides[2]
  end

  def isosceles?
    @sides[0] == @sides[1] || @sides[1] == @sides[2]
  end
end
