# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  number_equal = 0
  if a <= 0 || b <= 0 || c <= 0
    raise TriangleError, "A Traingle can't have a side with no length"
  end
  if ((a+b)<=c) || ((a+c)<=b) || ((b+c)<=a)
    raise TriangleError, "The sum of two sides can not be greater than the 3rd"
  end
  if a==b
    number_equal += 1
  end
  if a==c
    number_equal += 1
  end
  if b==c
    number_equal += 1
  end
  if number_equal == 0
    return :scalene
  end
  if number_equal == 1
    return :isosceles
  end
  if number_equal == 3
    return :equilateral
  end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
