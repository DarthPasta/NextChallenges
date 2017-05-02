class ChangeDataTypeOfIdToForeignKey < ActiveRecord::Migration[5.0]
	def self.up
		change_column :students, :teacher_id, :foreign_key
		change_column :teachers, :student_id, :foreign_key
	end
end