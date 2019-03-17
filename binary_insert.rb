def binary_insert(numbers, n)
  ceiling = numbers.length
  floor = 0
  if n < numbers[0]
    new_numbers = numbers.insert(0, n)
    return new_numbers
  end
  while !(ceiling == (floor + 1))
    center = floor + ((ceiling - floor) / 2)
    if numbers[center] < n
      floor = center
    else
      ceiling = center
    end
  end
  spot = ceiling
  new_numbers = numbers.insert(spot, n)
end

p binary_insert([1, 2, 5], 0)
p binary_insert([1, 2, 5], 3)
p binary_insert([1, 2, 5], 6)