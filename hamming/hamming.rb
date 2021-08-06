class Hamming
  def self.compute(seq1, seq2)
    raise ArgumentError.new("Sequences must be the same length") if seq1.size != seq2.size

    seq1.each_char.zip(seq2.each_char).count {|a| a[0] != a[1] }
  end
end
