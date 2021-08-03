class Matrix
  def initialize(string)
    @rows = string.split(/\n/).map{|row| row.split }
    @rows.each do |row|
      row.map!{|num| num.to_i}
    end

#    @columns = @rows.transpose
    rowws = string.split(/\n/)
    @columns = Array.new(@rows[0].length) { Array.new }
    rowws.each_with_index do |row, i|
      row.split.each_with_index do |num, j|
        @columns[j][i] = num.to_i
      end
    end
  end

  def rows
    @rows
  end

  def columns
    @columns
  end
end
