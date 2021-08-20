class Darts
  attr_reader :distance

  def initialize(x, y)
    @distance = Math.hypot(x, y)
  end

  def score
    case distance
    when 0..1
      return 10
    when 1..5
      return 5
    when 5..10
      return 1
    else
      return 0
    end
  end
end
