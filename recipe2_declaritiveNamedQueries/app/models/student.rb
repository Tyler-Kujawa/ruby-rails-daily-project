class Student < ActiveRecord::Base
	scope :freshman, -> {where(current_year: 'Freshman')}
	scope :sophmore, -> {where(current_year: 'Sophmore')}
	scope :junior, -> {where(current_year: 'Junior')}
	scope :senior, -> {where(current_year: 'Senior')}
	scope :graduate, -> {where(current_year: 'Graduate')}

	scope :by_last_name, order(:last_name)

	def self.findByCurrentYear(currentYear)
		if(currentYear.eql?('Freshman'))
			freshman
		elsif(currentYear.eql?('Sophmore'))
			sophmore
		elsif(currentYear.eql?('Junior'))
			junior
		elsif(currentYear.eql?('Senior'))
			senior
		elsif(currentYear.eql?('Graduate'))
			graduate
		end
	end

	def fullName
		first_name + " " + last_name
	end
end
