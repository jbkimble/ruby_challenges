class Numeral
  def initialize(number)
    @number = number
    @remainder = 0
    @final = ""
  end

  def convert_to_roman
    thousands_remainder = convert_place_to_numeral(1000, 'M', @number)
    nine_hundreds_remainder = convert_place_to_numeral(900, 'CM', thousands_remainder)
    five_hundreds_remainder = convert_place_to_numeral(500, 'D', nine_hundreds_remainder)
    four_hundreds_remainder = convert_place_to_numeral(400, 'CD', five_hundreds_remainder)
    hundreds_remainder = convert_place_to_numeral(100, 'C', four_hundreds_remainder)
    nineties_remainder = convert_place_to_numeral(90, 'XC', hundreds_remainder)
    forties_remainder = convert_place_to_numeral(40, 'XL', nineties_remainder)
    tens_remainder = convert_place_to_numeral(10, 'X', forties_remainder)
    nines_remainder = convert_place_to_numeral(9, 'IX', tens_remainder)
    fives_remainder = convert_place_to_numeral(5, 'V', nines_remainder)
    fours_remainder = convert_place_to_numeral(4, 'IV', fives_remainder)
    ones = convert_place_to_numeral(1, 'I', fours_remainder)
    @final
  end

  def convert_place_to_numeral(place, numeral, number)
    mulitplier = number / place
    @final += (numeral * mulitplier)
    remainder = number % place
    return remainder
  end

end
