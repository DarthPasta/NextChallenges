class ChangeDataTypeOfIdToInteger < ActiveRecord::Migration[5.0]
	def self.up
		change_column :students, :teacher_id, :integer
		change_column :teachers, :student_id, :integer
	end
end