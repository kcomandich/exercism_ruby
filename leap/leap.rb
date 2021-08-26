class Year
  attr_reader :year

  def initialize(year)
    @year = year
  end

  def divisible_by_four?
    year % 4 == 0
  end

  def divisible_by_100?
    year % 100 == 0
  end

  def divisible_by_400?
    year % 400 == 0
  end

  def self.leap?(year)
    check_year = Year.new(year)

    if check_year.divisible_by_400?
      return true
    elsif check_year.divisible_by_four? && ! check_year.divisible_by_100?
      return true
    else
      return false
    end
  end
end
