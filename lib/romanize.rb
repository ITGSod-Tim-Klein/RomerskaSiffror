input = 123

def romanize(input)
  raise ArgumentError, 'can not encode zero' if input == 0
  raise ArgumentError, 'can not encode negative number' if input < 0

  roman_numberal = []

  roman = { "I" => 0, "II" => 0, "III" => 0, "IV" => 0, "V" => 0, "VI" => 0, "VII" => 0, "VIII" => 0, "IX" => 0, "X" => 0, "XL" => 0, "L" => 0, "XC" => 0, "C" => 0, "CD" => 0, "D" => 0, "CM" => 0, "M" => 0 }
  roman_value = { "I" => 1, "II" => 2, "III" => 3, "IV" => 4, "V" => 5, "VI" => 6, "VII" => 7, "VIII" => 8, "IX" => 9, "X" => 10, "XL" => 40, "L" => 50, "XC" => 90, "C" => 100, "CD" => 400, "D" => 500, "CM" => 900, "M" => 1000 }

  while input > 0

    roman.reverse_each do |value, index|
      roman[value] = input / roman_value[value]
      input -= (roman_value[value] * roman[value])
      roman_numberal << (value * roman[value])
    end
  end
  return roman_numberal.join('')
end


p romanize(input)