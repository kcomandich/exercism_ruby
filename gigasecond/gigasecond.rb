class Gigasecond
  GIGASECOND = 1_000_000_000.freeze
  def self.from(time)
    time + GIGASECOND
  end
end
