class Numeral
  def initialize(number)
    @remainder = number
    @final = ""
  end

  def convert_to_roman
    [[1000, 'M'], [900, 'CM'],
    [500, 'D'], [400, 'CD'],
    [100, 'C'], [90, 'XC'],
    [40, 'XL'], [10, 'X'],
    [9, 'IX'], [5, 'V'],
    [4, 'IV'], [1, 'I']].each do |num, roman|
      @remainder = convert_place_to_numeral(num, roman, @remainder)
    end
    @final
  end

  def convert_place_to_numeral(place, numeral, number)
    mulitplier = number / place
    @final += (numeral * mulitplier)
    remainder = number % place
    return remainder
  end

end
