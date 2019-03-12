fruits = [
  {"name" => "apple", "color" => "red"},
  {"name" => "banana", "color" => "yellow"},
  {"name" => "grape", "color" => "purple"}
]

numbers = [2, 4, 5, 7, 9]

doubled_numbers_each_loop = numbers.each do |number|
  number *= 2
end

doubled_numbers_map = numbers.map do |number|
  number *= 2
end

# .map can mutate the block variable; .each cannot
p doubled_numbers_each_loop  # => [2, 4, 5, 7, 9]
p doubled_numbers_map  # => [4, 8, 10, 14, 18]



fruits.each {|hash|
  p hash["name"]
  p hash["color"]
  p "*" * 15
}

=begin

"apple"
"red"
"***************"
"banana"
"yellow"
"***************"
"grape"
"purple"
"***************"

=end


p [[1, 2], [3, 4], [5, 6]].to_h  # => {1=>2, 3=>4, 5=>6}

p [["apple", "red"]].to_h  # => {"apple"=>"red"}