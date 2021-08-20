class Darts
  BOARD_SCORES = { 1 => 10, 5 => 5, 10 => 1 }.freeze

  attr_reader :distance

  def initialize(x, y)
    @distance = Math.hypot(x, y)
  end

  def score
    BOARD_SCORES.each do |k,v|
      if distance <= k
        return v
      end
    end
    return 0
  end
end
