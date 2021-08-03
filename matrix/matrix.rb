class Matrix
  def initialize(string)
    @rows = string.split(/\n/).map{|row| row.split.map{|num| num.to_i } }
    @columns = @rows.transpose
  end

  def rows
    @rows
  end

  def columns
    @columns
  end
end
