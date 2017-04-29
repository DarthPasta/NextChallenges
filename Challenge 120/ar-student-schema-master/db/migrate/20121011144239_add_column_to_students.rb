require_relative '../config'

# this is where you should use an ActiveRecord migration to

class AddColumnToStudents < ActiveRecord::Migration[5.0]
  def up 
  	add_column :students, :phone, :integer
  end
end
    # HINT: checkout ActiveRecord::Migration.create_table