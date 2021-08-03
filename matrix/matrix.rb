class Matrix
  def initialize(string)
    @rows = string.split(/\n/).map{|row| row.split }
    @rows.each do |row|
      row.map!{|num| num.to_i}
    end

    @columns = @rows.transpose
  end

  def rows
    @rows
  end

  def columns
    @columns
  end
end
