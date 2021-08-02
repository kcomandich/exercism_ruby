class Acronym
  def self.abbreviate(phrase)
    words = phrase.split(/\W/)
    words.map{|w| w[0]}.join.upcase
  end
end
