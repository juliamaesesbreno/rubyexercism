module Complement
  
  @dna_to_rna = { "G"=>"C", "A"=>"U", "T"=>"A", "C"=>"G" }
  @@rna_to_dna = @@dna_to_rna.invert
  
  def self.of_dna dna
  	
    begin
      return dna.chars.inject('') { |rna, d| rna + @dna_to_rna[d] }
    end
  end

  def self.of_rna rna

    begin
      return rna.chars.inject('') { |dna, d| dna + @rna_to_dna[d] }
    end
  end
end