class Microwave
  attr_reader :minutes, :seconds

  def initialize(input)
    case input
      when 0..99
        @minutes = input / 60
        @seconds = input % 60
      else
        remainder = input % 100
        @minutes = input / 100 + remainder / 60
        @seconds = remainder % 60
      end
  end

  def timer
    "%02d:%02d" % [ @minutes, @seconds ]
  end
end
