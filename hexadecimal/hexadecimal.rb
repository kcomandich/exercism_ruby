class Hexadecimal
  INVALID_INPUT = /[^\h]/.freeze
  ALPHA = /[abcdef]/.freeze
  HEX_MAP = { 'a' =>  10, 'b' =>  11, 'c' => 12, 'd' => 13, 'e' => 14, 'f' => 15 }.freeze

  def initialize(hexadecimal)
    @hexadecimal = hexadecimal
  end

  def to_decimal
    return 0 if @hexadecimal =~ INVALID_INPUT
    dec(@hexadecimal)
  end

  private

  def dec(chars)
    return 0 if chars == ''
    dec(chars[..-2])*16 + digit_value(chars[-1])
  end

  def digit_value(char)
    char =~ ALPHA ?  HEX_MAP[char] : char.to_i
  end
end
