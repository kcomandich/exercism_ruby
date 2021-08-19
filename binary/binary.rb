class Binary
  def self.to_decimal(binary)
    raise ArgumentError if binary =~ /[^01]/
    binary.chars.reduce(0) {|sum, char| sum*2 + char.to_i }
  end
end
