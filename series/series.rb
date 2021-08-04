class Series
  def initialize(string)
    @series = string
  end

  def slices(count)
    result = []

    raise ArgumentError.new("Count is longer than string length") if count > @series.size
    @series.each_char.with_index{|c, i| result << @series.slice(i,count) if @series.slice(i,count).size == count } 
    result
  end
end
