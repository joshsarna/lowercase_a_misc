# input: [1,2,3,4,5,6,7,8,9,10]
# 
numbers = [1, 2, 3, 4, 5, 6]

# (1..3).each do |n|
#  p n
# end

# numbers = *(1..10)
# p numbers


# find the sum of numbers in the array

# 1) Brian's head

# sum = 0
# index = 0
# numbers.length.times do
#   number = numbers[index]
#   sum = sum + number
#   index = index + 1
# end

# sum = 0
# numbers.each do |number|
#   sum = sum + number
# end

# i = 0
# sum = 0
# loop do
#   if i == numbers.length
#     break
#   else
#     sum = sum + numbers[i]
#   end
#   i = i + 1
# end

# i = 0
# sum = 0
# while true
#   if i == numbers.length
#     break
#   else
#     sum = sum + numbers[i]
#   end
#   i = i + 1
# end

# i = 0
# sum = 0

# while i < numbers.length
#   # p numbers[i]
#   sum = sum + numbers[i]
#   i = i + 1
# end

# i = 0
# sum = 0

# until i == numbers.length
#   # p numbers[i]
#   sum = sum + numbers[i]
#   i = i + 1
# end


# sum = 0
# numbers.each_with_index do |number, index|
#   sum = sum + number
# end

# sum = 0
# numbers.each_with_index do |number, index|
#   sum = sum + numbers[index]
# end

# sum = 0
# numbers.length.times do |hippo|
#   p hippo
# end

# p sum
i = 1000
p numbers[i]