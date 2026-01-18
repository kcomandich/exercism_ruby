class SpaceAge

  ORBITAL_PERIOD = {
    mercury: 0.2408467,
    venus: 0.61519726,
    mars: 1.8808158,
    jupiter: 11.862615,
    saturn: 29.447498,
    uranus: 84.016846,
    neptune: 164.79132,
  }

  private

  def initialize(age_in_seconds)
    @age_in_seconds = age_in_seconds
    @earth_age = age_in_seconds / (365.25 * 24 * 60 * 60)
  end

  def calc_age(planet)
    @earth_age / ORBITAL_PERIOD[planet]
  end

  public

  def on_earth
    @earth_age
  end

  def on_mercury
    calc_age(:mercury)
  end

  def on_venus
    calc_age(:venus)
  end

  def on_mars
    calc_age(:mars)
  end

  def on_jupiter
    calc_age(:jupiter)
  end

  def on_saturn
    calc_age(:saturn)
  end

  def on_uranus
    calc_age(:uranus)
  end

  def on_neptune
    calc_age(:neptune)
  end
end
