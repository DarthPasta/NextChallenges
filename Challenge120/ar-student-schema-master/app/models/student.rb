# require_relative '../../db/config'


class Student < ActiveRecord::Base
# implement your Student model here
	belongs_to :teacher
# , through: :teacher_id

	def name
		first_name + " " + last_name
	end

	def age
	
		# age = Date.today.year - self.birthday.year
  #   	age -= 1 if Date.today < self.birthday + age.years
	end

	validates_format_of :email, :with => /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/
	validates :email, uniqueness: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }        
	# validates :age, numericality: {only_integer: true, greater_than: 5}
	validates :phone, format: { with: /\(\d{3}\)\s\d{3}-\d{4}\s[a-z]\d{4}/}, :allow_blank => true

end

#  student1 = Student.new
#  student1.first_name = "Ben"
#  student1.last_name = "Lee"
#  student1.email = "liow@student.com"
# student1.teacher_id = 2
# student1.save

