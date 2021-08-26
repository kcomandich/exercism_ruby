class Complement
  DNA_TO_RNA = { 
    'G' => 'C',
    'C' => 'G',
    'T' => 'A',
    'A' => 'U'
  }.freeze

  def self.of_dna(rna)
    rna.each_char.map { |c| DNA_TO_RNA[c] }.join
  end
end
