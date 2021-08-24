class Microwave
  attr_reader :minutes, :seconds

  def initialize(input)
    case input
      when 0..99
        @minutes, @seconds = input.divmod(60)
      else
        @minutes, @seconds = input.divmod(100)
        add_min, @seconds = @seconds.divmod(60)
        @minutes += add_min
      end
  end

  def timer
    "%02d:%02d" % [ @minutes, @seconds ]
  end
end
