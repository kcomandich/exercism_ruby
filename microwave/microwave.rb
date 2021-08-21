class Microwave
  attr_reader :time

  def initialize(seconds)

    case seconds
      when 0..99
        minutes = seconds / 60
        seconds = seconds % 60
      else
        remainder = seconds % 100
        minutes = seconds / 100 + remainder / 60
        seconds = remainder % 60
      end
    @time = "%02d:%02d" % [ minutes, seconds ]
  end

  def timer
    time
  end
end
