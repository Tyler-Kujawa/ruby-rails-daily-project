class String
	VOWELS = ['a', 'e', 'i', 'o', 'u']

	def each_char
		self.split("").each do |char|
			yield(char) if block_given?
		end
	end

	def vowel_count
		x = 0
		self.each_char do |char|
			x += 1 if VOWELS.include?(char.downcase)
		end
		x
	end
end