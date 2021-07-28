class Acronym
  def self.abbreviate(phrase)
    words = phrase.split(/\W/).reject(&:empty?)
    words.map{|w| w[0]}.join.upcase
  end
end
