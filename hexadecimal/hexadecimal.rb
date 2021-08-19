class Hexadecimal
  INVALID_INPUT = /[^\h]/.freeze
  HEX_DIGITS = '0123456789abcdef'.freeze

  def initialize(hexadecimal)
    @hexadecimal = hexadecimal
  end

  def to_decimal
    return 0 if @hexadecimal =~ INVALID_INPUT
    @hexadecimal.chars.reduce(0) {|sum, c| sum*16 + HEX_DIGITS.index(c) }
  end
end
