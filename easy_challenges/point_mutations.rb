class DNA
  def initialize(strand)
    @strand = strand
  end

  def hamming_distance(other_strand)
    strands = [@strand, other_strand].sort_by(&:size)
    hamming_distance = 0
    strands[0].chars.each_with_index do |char, idx|
      hamming_distance += 1 if char != strands[1][idx]
    end
    hamming_distance
  end
end
