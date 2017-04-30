require_relative '../../db/config'

class Student < ActiveRecord::Base
# implement your Student model here
attr_accessor :first_name, :last_name, :age

	def name
		name = first_name + " " + last_name
	end

	def age
		age = Date.today.year - birthday.year
    	age -= 1 if Date.today < birthday + age.years
	end
end

