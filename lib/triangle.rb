class Triangle
  attr_accessor :a, :b, :c
  

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  

  def kind
    if ((a && b && c) > 0) && (a + b > c) && (a + c > b) && (b + c > a)
      if ((a == b) && (a == c) && (b == c))
        return :equilateral
      elsif ((a == b) || (a == c) || (b == c))
        return :isosceles
    else
      return :scalene
    end
  else
    raise TriangleError
  end
end

class TriangleError < StandardError
  # error code
end
end