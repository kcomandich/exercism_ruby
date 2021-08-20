class Darts
  BOARD_SCORES = { 1 => 10, 5 => 5, 10 => 1 }.freeze

  attr_reader :x, :y, :radius

  def initialize(x, y)
    @x = x
    @y = y
    @radius = Math.sqrt(x**2 + y**2)
  end

  def score
    BOARD_SCORES.each do |k,v|
      if radius <= k
        return v
      end
    end
    return 0
  end
end
