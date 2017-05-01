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

	validates_format_of :email, :with => /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/
	validates :email, uniqueness: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }        
	validates :age, numericality: {only_integer: true, greater_than: 5}
	validates :phone, format: { with: /\(\d{3}\)\s\d{3}-\d{4}\s[a-z]\d{4}/}

end

