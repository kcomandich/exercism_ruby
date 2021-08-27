class Year
  attr_reader :year

  def initialize(year)
    @year = year
  end

  def self.leap?(input)
    year = Year.new(input)

    if year.divisible?(400)
      return true
    elsif year.divisible?(4) && ! year.divisible?(100)
      return true
    else
      return false
    end
  end

  def divisible?(divisor)
    (year % divisor).zero?
  end
end
