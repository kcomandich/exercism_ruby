class Trinary
  INVALID_INPUT = /[^012]/.freeze

  def initialize(trinary)
    @trinary = trinary
  end

  def to_decimal
    return 0 if @trinary =~ INVALID_INPUT

    @trinary.each_char.with_index.reduce(0) do |sum, (c, i)|
      place = @trinary.size - i - 1
      sum += c.to_i * 3**place
    end
  end
end
