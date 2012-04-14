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
  sort_args = [a,b,c].sort
  raise TriangleError if  sort_args[0] < 1 || sort_args[2] >=  sort_args[0] + sort_args[1] &&
                                              sort_args[0] == sort_args[1] &&
                                              sort_args[0] != sort_args[2]
  return :equilateral if a == b && a == c
  return :isosceles   if a == b || a == c || b == c
  return :scalene     if a != b && a != c
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end


  # The first assignment did not talk about how to handle errors.
  # Let's handle that part now.
#  def test_illegal_triangles_throw_exceptions
#    assert_raise(TriangleError) do triangle(0, 0, 0) end
#    assert_raise(TriangleError) do triangle(3, 4, -5) end
#    assert_raise(TriangleError) do triangle(1, 1, 3) end
#    assert_raise(TriangleError) do triangle(2, 4, 2) end
    # HINT: for tips, see http://stackoverflow.com/questions/3834203/ruby-koan-151-raising-exceptions
# end

