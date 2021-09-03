class Series
  attr_reader :series

  def initialize(digit_string)
    @series = digit_string.chars
  end

  def slices(count)
    raise ArgumentError if count > @series.size
    series.each_cons(count).map(&:join)
  end
end
