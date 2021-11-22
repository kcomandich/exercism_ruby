#require 'pry-byebug'

class Game
  attr_reader :frames

  def initialize
    @current_frame = 0
    @bonus_score = []
  end

  def ready_to_score?
    if frames[9].strike?
      @bonus_score.size > 1
    elsif frames[8].strike?
      @bonus_score.size > 0
    elsif frames[9].spare?
      @bonus_score.size > 0
    else
      frames[9].full?
    end
  end

  def roll(pins)
    raise BowlingError if ready_to_score? 
    raise BowlingError if pins < 0 || pins > 10

    if @current_frame < 10
      frames[@current_frame] << pins

      if frames[@current_frame].full?
        @current_frame += 1
      end
    else
      raise BowlingError if @bonus_score.size > 1
      if @bonus_score[0]
        raise BowlingError unless @bonus_score[0] == 10 || @bonus_score[0] + pins <= 10
      end

      @bonus_score << pins
    end
  end

  def score
    raise BowlingError unless ready_to_score? 

    sum = 0
    frames.each.with_index do |f,i|
      sum += f.score if i < 10 # don't count the bonus rolls as frames of their own
      sum += frames[i+1].rolls[0] if f.spare? && frames[i+1]
      sum += frames[i+1].score if f.strike? && frames[i+1]
      sum += frames[i+2].rolls[0] if f.strike? && frames[i+1] && frames[i+1].strike? && frames[i+2]
    end
    
    sum += @bonus_score[0] if frames[8].strike?
    sum += @bonus_score.sum
  end

  private

  def frames
    @frames ||= Array.new(10) { Frame.new }
  end

  class Frame
    def size
      rolls.size
    end

    def << pins
      raise BowlingError if score + pins > 10

      rolls << pins
      rolls << 0 if pins == 10 && !full?
    end

    def rolls
      @rolls ||= []
    end

    def full?
      rolls.size == 2
    end

    def strike?
      rolls[0] == 10
    end

    def spare?
      !strike? && rolls[0] && rolls[1] && (rolls[0] + rolls[1] == 10)
    end

    def score
      rolls.sum
    end
  end

  class BowlingError < StandardError; end

end
