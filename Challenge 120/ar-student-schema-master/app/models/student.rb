require_relative '../../db/config'

class Student < ActiveRecord::Base
	#implement your Student model here
	attr_accessor :first_name, :last_name, 
		:gender, :birthday, :email, :phone, :age

		validates :first_name, presence: true
		validates :last_name, presence: true
		validates :gender, presence: true
		validates :birthday, presence: true
		validates :age, presence: true, numericality: { greater_than: 5}
		validates :email, presence: true, uniqueness: true



		
		
end