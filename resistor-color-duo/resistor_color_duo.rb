class ResistorColorDuo
  COLORS = [ "black", "brown", "red", "orange", "yellow", "green", "blue", "violet", "grey", "white"]
  def self.value(colors)
    COLORS.index(colors[0]) * 10 + COLORS.index(colors[1])
  end
end
