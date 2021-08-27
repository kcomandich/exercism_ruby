class Year
  attr_reader :year

  def initialize(year)
    @year = year
  end

  def self.leap?(input)
    year = Year.new(input)
    year.divisible?(400) || year.divisible?(4) && ! year.divisible?(100)
  end

  def divisible?(divisor)
    (year % divisor).zero?
  end
end
