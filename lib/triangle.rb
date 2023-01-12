class Triangle 
  attr_reader :side_one, :side_two, :side_three

  def initialize( side_one, side_two, side_three)
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three
  end

  def kind
    if side_one==side_two && side_two==side_three
      :equilateral
    elsif side_one==side_two or side_two==side_three or side_one==side_three
      :isosceles
    else 
      :scalene
    end
  end

  def validate_triangle
    (side_one,side_two,side_three).all > 0
    
  end
  
  class TriangleError < StandardError

  end
end
