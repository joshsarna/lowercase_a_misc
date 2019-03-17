# # example with procs (blocks saved as variables)

# add = proc{ | a, b | a + b }
# multiply = proc{ | a, b | a * b }

# def calculator(input1, input2, operation)
#   operation.call(input1, input2)
# end

# p calculator(3, 4, add)  # => 7
# p calculator(3, 4, multiply)  # => 12
# p calculator(2, 2, multiply)  # => 4

# # same example with just blocks and yield

# def calculator(input1, input2)
#   yield(input1, input2)
# end

# p calculator(3, 4){ | a, b | a + b }  # => 7
# p calculator(3, 4){ | a, b | a * b }  # => 12
# p calculator(2, 2){ | a, b | a * b }  # => 4

# # the difference is that in the latter example, you can're reuse the blocks

class Array
  def each
    self.length.times do |i|
      yield(self[i])
    end
  end
end 

fruits = ["apple", "pear", "peach"]

fruits.each do |fruit|
  p fruit
end