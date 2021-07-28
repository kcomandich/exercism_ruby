class Acronym
  def self.abbreviate(phrase)
    words = phrase.split(/\W/).reject(&:empty?)
    words.inject(""){|result,w| result << w[0]}.upcase
  end
end
