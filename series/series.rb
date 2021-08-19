class Series
  attr_reader :series

  def initialize(string)
    @series = string.split('')
  end

  def slices(count)
    raise ArgumentError if count > @series.size
    series.each_cons(count).map(&:join)
  end
end
