require "pry"
class Triangle

  attr_accessor :side_1, :side_2, :side_3

  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end

  def kind
    if side_1 == side_2 && side_2 == side_3
      :equilateral
    elsif side_1 == side_2 || side_2 == side_3 || side_1 == side_3
      :isosceles

    elsif side_1 != side_2 && side_2 != side_3 && side_1 != side_3
      :scalene

    elsif side_1 + side_2 + side_3  == 0
      "raise TriangleError"
      
    elsif side_1 + side_2 < side_3 || side_1 + side_3 < side_2 || side_2 + side_3 < side_1 
      "raise TriangleError"

    else 
      "clean"
  
    end
  end



  class TriangleError < StandardError
  end
end

my_triangle = Triangle.new(2,3,4)
binding.pry



    # elsif [side_1, side_2, side_3].all?(&:positive?) 
    #   raise TriangleError
    # end

    # elsif side_1 + side_2 >= side_3 && side_1 + side_3 >= side_2 && side_2 + side_3 >= side_1 
    #   raise TriangleError
    # end
  # else
  #   raise TriangleError

  # def no_size
  #   side_1 + side_2 + side_3 == 0
  # end

  # def all_sides_positive
  #   [side_1, side_2, side_3].all?(&:positive?)
  # end

  # def triangle_inequality
  #   side_1 + side_2 > side_3 && side_1 + side_3 > side_2 && side_2 + side_3 > side_1
  # end

#end
