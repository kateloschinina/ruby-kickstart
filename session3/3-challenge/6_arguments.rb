# DO NOT STRUGGLE ON THIS PROBLEM FOR MORE THAN 30 MINUTES!!

# Write a method, match_maker, which will receive an unknown number of
# elements, and return an array where every two elements are represented by true or false.
#
# The very first parameter will not be part of this set. Instead, it will tell
# you how to determine what their value should be.
# If it is true, then they will be true when they are oppositely truthy.
# If it is false, then they will be true when they are similarly truthy.
#
# Examples:
# match_maker false, true,  true                # => [true]
# match_maker true,  true,  true                # => [false]
# match_maker true,  false, false               # => [false]
# match_maker true,  false, true                # => [true]
# match_maker true,  true,  false               # => [true]
# match_maker true,  true,  true, false, true   # => [false, true]
# match_maker true,  true,  true, false, nil    # => [false, false]
# match_maker true,  true,  true, true, nil     # => [false, true]
# match_maker true,  true,  true, 0, nil        # => [false, true]

def match_maker (factor, *parameters)
  result = Array.new
  #puts "#{parameters}"
  parameters.each_slice 2 do |p1,p2|
    #puts "P1 and P2: #{p1} and #{p2},  factor #{factor}"
    p1 = !!p1
    p2 = !!p2
    if factor
      result << (p1 != p2)
    else
      result << (p1 == p2)
    end
  end
  result
end

=begin
puts "#{match_maker false, true,  true}"                # => [true]
puts "#{match_maker true,  true,  true}"                # => [false]
puts "#{match_maker true,  false, false}"               # => [false]
puts "#{match_maker true,  false, true}"                # => [true]
puts "#{match_maker true,  true,  false}"               # => [true]
puts "#{match_maker true,  true,  true, false, true}"   # => [false, true]
puts "#{match_maker true,  true,  true, false, nil}"    # => [false, false]
puts "#{match_maker true,  true,  true, true, nil}"     # => [false, true]
puts "#{match_maker true,  true,  true, 0, nil}"        # => [false, true]
=end
