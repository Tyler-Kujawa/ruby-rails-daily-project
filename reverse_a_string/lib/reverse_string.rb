class String
	def reverse_by_iteration!
		str_size = self.length + 1
		reversed_str = ""
		str_size.times do |i|
			current_index = self[self.length - i]
			reversed_str += current_index unless current_index.nil?
		end
		reversed_str
	end

	def reverse_in_place!
		half_length = self.length/2
		half_length.times do |i|
			tmp = self[i]; self[i] = self[-i-1]; self[-i-1] = tmp;
		end
		return self
	end
end