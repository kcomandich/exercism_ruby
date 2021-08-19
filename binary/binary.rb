class Binary
  def self.to_decimal(binary)
    raise ArgumentError if binary =~ /[^01]/
    result = 0
    binary.reverse.each_char.with_index {|char, index| result += char.to_i * 2**index }
    return result
  end
end
