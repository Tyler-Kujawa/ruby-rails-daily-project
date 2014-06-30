class StudentsController < ApplicationController
	def index
		@students = Student.all
	end

	def search
		if(params[:current_year])
			@yearSearched = params[:current_year]
			@returned_students = Student.findByCurrentYear(params[:current_year])
			render 'students/search_results'
		else
			render 'index'
		end
	end
end