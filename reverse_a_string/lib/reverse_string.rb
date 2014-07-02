class String
	def reverse_str_1
		str_size = self.length + 1
		reversed_str = ""
		str_size.times do |i|
			current_index = self[self.length - i]
			puts "#{current_index} is at #{i}"
			reversed_str += current_index unless current_index.nil?
		end
		reversed_str
	end
end