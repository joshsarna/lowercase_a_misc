def number_to_word(n)
  numbers_to_words = {
    0 => "zero",
    1 => "one",
    2 => "two",
    3 => "three",
    4 => "four",
    5 => "five",
    6 => "six",
    7 => "seven",
    8 => "eight",
    9 => "nine",
    10 => "ten",
    11 => "eleven",
    12 => "twelve",
    13 => "thirteen",
    14 => "fourteen",
    15 => "fifteen",
    16 => "sixteen",
    17 => "seventeen",
    18 => "eighteen",
    19 => "nineteen",
    20 => "twenty",
    30 => "thirty",
    40 => "forty",
    50 => "fifty",
    60 => "sixty",
    70 => "seventy",
    80 => "eighty",
    90 => "ninety",
    100 => "hundred",
    1000 => "thousand",
    1000000 => "one million"
  }

  number_as_words = ""
  number = n
  if number < 0
    number_as_words << "negative "
    number *= -1
  end
  if number / 1000000 == 1
    number_as_words << numbers_to_words[1000000]
    return number_as_words
  end
  number_of_thousands = number / 1000
  if number_of_thousands == 0
  elsif number_of_thousands <= 20
    number_as_words << numbers_to_words[number_of_thousands] + " " + numbers_to_words[1000] + " "
  elsif number_of_thousands < 100
    number_of_ten_thousands = number_of_thousands / 10
    number_of_one_thousands = number_of_thousands % 10
    number_as_words << numbers_to_words[number_of_ten_thousands * 10] + " "
    if number_of_one_thousands > 0
      number_as_words << numbers_to_words[number_of_one_thousands] + " "
    end
    number_as_words << numbers_to_words [1000] + " "
  end
  number %= 1000
  number_of_hundreds = number / 100
  if number_of_hundreds > 0
    number_as_words << numbers_to_words[number_of_hundreds] + " " + numbers_to_words[100] + " "
  end
  number %= 100
  if number == 0
    if number_as_words == ""
      number_as_words << numbers_to_words[0]
      return number_as_words
    else
      return number_as_words
    end
  end
  if number <= 20
    number_as_words << numbers_to_words[number]
  else
    number_of_tens = number / 10
    number_of_ones = number % 10
    number_as_words << numbers_to_words[number_of_tens * 10] + " "
    if number_of_ones > 0
      number_as_words << numbers_to_words[number_of_ones]
    end
  end
  return number_as_words
end

p number_to_word(48105) # => "forty eight thousand one hundred five"
p number_to_word(0)  # => "zero"
p number_to_word(1000000)  # => "one million"