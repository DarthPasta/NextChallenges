
class CreateStudentTeachersTable < ActiveRecord::Migration[5.0]
  def change
    # HINT: checkout ActiveRecord::Migration.create_table
    create_table :student_teachers do |t|
    	t.integer :id => false
      t.integer :student_id
      t.integer :teacher_id

      # add columns that you would need for this table

      t.timestamps
    end
  end
end