class RenameTeacherToTeachers < ActiveRecord::Migration[5.0]
	def self.up 
		rename_table :teacher, :teachers
	end
end
