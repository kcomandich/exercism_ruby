class Year
  def self.leap?(year)
    if (year % 400).zero?
      return true
    elsif (year % 4).zero? && !(year % 100).zero?
      return true
    else
      return false
    end
  end
end
