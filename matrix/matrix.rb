class Matrix
  def initialize(string)
    @rows = string.lines.map{|row| row.split.map(&:to_i)}
    @columns = @rows.transpose
  end

  def rows
    @rows
  end

  def columns
    @columns
  end
end
