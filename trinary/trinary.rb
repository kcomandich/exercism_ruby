class Trinary
  INVALID_INPUT = /[^012]/.freeze

  attr_reader :trinary

  def initialize(trinary)
    @trinary = trinary
  end

  def to_decimal
    return 0 if trinary =~ INVALID_INPUT
    trinary.chars.reduce(0) { |sum, c| 3*sum + c.to_i }
  end
end
