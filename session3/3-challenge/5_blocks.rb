# DO NOT STRUGGLE ON THIS PROBLEM FOR MORE THAN 30 MINUTES!! IT'S A TOUGH ONE :)

# Write a method, spiral_access, that takes a 2d square array (an array of arrays)
# and a block, and calls the block for each of the elements, in spiral order.
#
# HINT: This method is probably best sovled recursively
#
# Example:
# two_d = [
#   [ 1,  2,  3,  4, 5],
#   [16, 17, 18, 19, 6],
#   [15, 24, 25, 20, 7],
#   [14, 23, 22, 21, 8],
#   [13, 12, 11, 10, 9],
# ]
# order = []
# spiral_access two_d do |i|
#   order << i
# end
# order # => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25]


two_d = [
   [ 1,  2,  3,  4, 5],
   [16, 17, 18, 19, 6],
   [15, 24, 25, 20, 7],
   [14, 23, 22, 21, 8],
   [13, 12, 11, 10, 9],
 ]

=begin
two_d = [
   [ 1,  2,  3],
   [8, 9, 4],
   [7, 6, 5],
 ]
=end

order = []

def spiral(two_d,two_d_res = Array.new)
  if two_d == []
    return two_d_res
  end
  two_d_res << two_d[0]
  two_d.shift
  two_d = two_d.transpose.reverse
  #puts "two_d: #{two_d}"
  spiral(two_d,two_d_res)
end

#puts "spiral: #{spiral(two_d)}"

def spiral_access (two_d, &block)
  two_d = spiral(two_d)
  two_d.each {|x| x.each { |y| block.call y}}
end

spiral_access two_d do |i|
   order << i**2
 end

 #puts order
