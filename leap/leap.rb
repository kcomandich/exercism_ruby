class Year
  def self.leap?(year)
    if (year % 400 == 0)
      return true
    elsif (year % 4 == 0) && !(year % 100 == 0)
      return true
    else
      return false
    end
  end

  #use refinements?
  #use zero? method?

end
