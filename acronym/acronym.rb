class Acronym
  def self.abbreviate(phrase)
    words = phrase.split(/\W/)
    abbreviation = ''
    words.each{|w| abbreviation += w[0] if w[0]}
    abbreviation.upcase
  end
end
