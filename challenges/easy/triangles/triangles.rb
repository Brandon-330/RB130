class Triangle
  def initialize(side1, side2, side3)
    @sides = [side1, side2, side3].sort

    raise ArgumentError unless valid?
  end

  def valid?
    return false if @sides.min < 0
    @sides[0..-2].sum > @sides[-1]
  end

  def kind
    if @sides.uniq.size == 1
      "equilateral"
    elsif @sides.uniq.size == 3
      "scalene"
    else
      "isosceles"
    end
  end
end