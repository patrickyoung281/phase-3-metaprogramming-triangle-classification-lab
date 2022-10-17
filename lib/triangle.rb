class Triangle
  
  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

def kind
  validate_triangle
  if side1 == side2 && side1 == side3
    :equilateral
  elsif side1 == side2 || side2 == side3 || side1 == side3
    :isosceles
  elsif side1 != side2 && side2 != side3 && side1 !=side3 
    :scalene
  end
end

def verify_triangle
    [side1, side2, side3].all?(&:positive?)
  end

def verify_inequality
  side1 + side2 > side3 && side2 + side3 > side1 && side1 + side3 > side2
end

def validate_triangle
  raise TriangleError unless verify_inequality && verify_triangle
end

  class TriangleError < StandardError  
end

end
