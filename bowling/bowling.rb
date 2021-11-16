class Game
  attr_reader :frames, :points

  def ready_to_score?
    frames.size > 9
  end

  def roll(pins)
    raise BowlingError if pins < 0 || pins > 10
    raise BowlingError if frames.last && frames.last.size == 1 && (frames.last[0] + pins > 10)
    raise BowlingError if frames.size == 10 && frames.last[1] && (frames.last[0] + frames.last[1]) < 10
    raise BowlingError if frames.size == 11 && frames[9][0] < 10 && frames.last[0] < 10
    raise BowlingError if frames.size == 11 && frames[9][0] == 10 && frames.last[0] < 10 && frames.last[1]

    if pins == 10
      frames << [pins, 0]
    elsif (frames.last && frames.last.size == 2)
      frames << [pins]
    elsif frames.last && frames.last[0] != 10
      frames.last << pins
    else
      frames << [pins]
    end
  end

  def score
    raise BowlingError unless ready_to_score? 
    raise BowlingError if frames.size == 10 && (frames.last[0] + frames.last[1]) == 10  # bonus roll(s) missing
    raise BowlingError if frames.size == 11 && frames[frames.size - 2][0] == 10 && frames.last[0] == 10  # final bonus roll missing

    sum = 0
    frames.each.with_index do |f, i|
      break if i == 10  # the bonus roll(s) shouldn't get added in again
      unless f[1]
        f[1] = 0   # should only need this if a single one gets added at the end?
      end

      sum += f[0] + f[1]

      if f[0] == 10
        sum += frames[i+1][0] + frames[i+1][1]
        if frames[i+1][0] == 10
          sum += frames[i+2][0]
        end
      elsif f[0] + f[1] == 10
        sum += frames[i+1][0]
      end
    end

    sum
  end

  private

  def frames
    @frames ||= []
  end

  class BowlingError < StandardError; end

end
