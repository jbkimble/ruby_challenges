require 'numeral.rb'

describe 'Numeral' do
  [
    [ 1, 'I' ],
    [ 2, 'II' ],
    [ 3, 'III' ],
    [ 4, 'IV' ],
    [ 5, 'V' ],
    [ 6, 'VI' ],
    [ 8, 'VIII' ],
    [ 15, 'XV' ],
    [ 21, 'XXI' ],
    [ 35, 'XXXV' ],
    [ 44, 'XLIV' ],
    [ 98, 'XCVIII' ],
    [ 490, 'CDXC'],
    [ 501, 'DI'],
    [ 601, 'DCI'],
    [ 904, 'CMIV' ],
    [ 909, 'CMIX' ],
    [ 3200, 'MMMCC' ]
  ].each do |arabic_numeral, roman_numeral|
    it "returns #{roman_numeral} for #{arabic_numeral}" do
      numeral = Numeral.new(arabic_numeral)
      expect(numeral.convert_to_roman).to eq(roman_numeral)
    end
  end
end
