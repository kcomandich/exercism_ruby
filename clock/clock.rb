class Clock
  attr_reader :hour, :minute

  def initialize(time)
    @hour = time[:hour] ||= 0
    @minute = time[:minute] ||= 0

    @hour += @minute / 60

    @hour = @hour % 24
    @minute = @minute % 60
  end

  def to_s
    "%02d:%02d" % [ hour, minute ]
  end

  def +(clock)
    Clock.new(hour: hour + clock.hour, minute: minute + clock.minute)
  end

  def -(clock)
    Clock.new(hour: hour - clock.hour, minute: minute - clock.minute)
  end

  def ==(clock)
    hour == clock.hour && minute == clock.minute
  end
end
