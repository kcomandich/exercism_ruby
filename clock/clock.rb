class Clock
  def initialize(time)
    @hour = time[:hour] ||= 0
    @minute = time[:minute] ||= 0

    if @minute >= 60
      @hour += @minute / 60
    end

    if @minute < 0
      @hour += @minute / 60
    end

    @hour = @hour % 24
    @minute = @minute % 60
  end

  def to_s
    "%02d:%02d" % [ @hour, @minute ]
  end

  def hour
    @hour
  end

  def minute
    @minute
  end

  def +(clock)
    Clock.new(hour: @hour + clock.hour, minute: @minute + clock.minute)
  end

  def -(clock)
    Clock.new(hour: @hour - clock.hour, minute: @minute - clock.minute)
  end

  def ==(clock)
    @hour == clock.hour && @minute == clock.minute 
  end
end
