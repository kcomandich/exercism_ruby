class SpaceAge

  PLANETS = {
    earth: 1.0,
    mercury: 0.2408467,
    venus: 0.61519726,
    mars: 1.8808158,
    jupiter: 11.862615,
    saturn: 29.447498,
    uranus: 84.016846,
    neptune: 164.79132,
  }

  SECS_PER_EARTH_YEAR = (365.25 * 24 * 60 * 60)

  def initialize(seconds)
    @earth_age = seconds / SECS_PER_EARTH_YEAR
  end

  PLANETS.each do |planet, orbital_period|
    define_method "on_#{planet}" do
      @earth_age / orbital_period
    end
  end
end
