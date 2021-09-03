class Series
  def initialize(digit_string)
    @series = digit_string.each_char
  end

  def slices(count)
    raise ArgumentError if count > @series.size
    series.each_cons(count).map(&:join)
  end

  private

  def series
    @series
  end
end
