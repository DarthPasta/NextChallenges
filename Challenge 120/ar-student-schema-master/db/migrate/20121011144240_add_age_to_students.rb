require_relative '../config'

# this is where you should use an ActiveRecord migration to

class AddAgeToStudents < ActiveRecord::Migration[5.0]
  def up 
  	add_column :students, :age, :integer
  end
end