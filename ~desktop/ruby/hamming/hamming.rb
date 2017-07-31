class Hamming 
	def self.compute(s1, s2)
		if s1.size == s2.size
			string1 = s1.split('')
			string2 = s2.split('')

			string1.zip(string2).select{ |e| e[0] != e[1] }.size
		end
	end
end

