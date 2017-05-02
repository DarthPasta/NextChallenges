# require_relative '../../db/config'

class Teacher < ActiveRecord::Base
	has_many :student_teachers
	has_many :students, :through => :student_teachers

	before_validation :downcase_email

	validates :name, presence: true, uniqueness: {case_sensitive: false}
	validates :email, presence: true, uniqueness: {case_sensitive: true}, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create } 

	private
	def downcase_email
		self.email = email.downcase if email.present?
	end
	
end


