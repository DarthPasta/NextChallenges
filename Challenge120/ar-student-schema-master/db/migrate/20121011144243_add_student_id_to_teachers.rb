class AddStudentIdToTeachers < ActiveRecord::Migration[5.0]
	def self.up 
		add_column :teachers, :student_id, :integer
	end
end