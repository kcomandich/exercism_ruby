class Year
  def self.leap?(year)
    if divisible_by_400?(year)
      return true
    elsif divisible_by_four?(year) && !divisible_by_100?(year)
      return true
    else
      return false
    end
  end

  private

  def self.divisible_by_four?(year)
    year % 4 == 0
  end

  def self.divisible_by_100?(year)
    year % 100 == 0
  end

  def self.divisible_by_400?(year)
    year % 400 == 0
  end
end
