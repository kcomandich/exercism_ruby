class Microwave
  attr_reader :minutes, :seconds

  def initialize(input)
    case input
      when 0..99
        @minutes, @seconds = input.divmod(60)
      else
        remainder = input % 100
        @minutes, @seconds = remainder.divmod(60)
        @minutes += input / 100
      end
  end

  def timer
    "%02d:%02d" % [ @minutes, @seconds ]
  end
end
