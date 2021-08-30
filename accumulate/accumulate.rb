class Array
  def accumulate
    result = []

    unless block_given?
      return to_enum
    end
    self.each {|e| result << (yield e) }
    result
  end
end
