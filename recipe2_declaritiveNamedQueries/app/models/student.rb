class Student < ActiveRecord::Base

	def self.findByCurrentYear(currentYear)
		@student = Student.where(current_year: currentYear);
		return @student

	end

	def fullName
		first_name + " " + last_name
	end
end
