class Complement
  DNA = 'GCTA'.freeze
  RNA = 'CGAU'.freeze

  def self.of_dna(dna)
    dna.tr(DNA, RNA)
  end
end
