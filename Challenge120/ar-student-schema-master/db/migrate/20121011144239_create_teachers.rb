require_relative '../config'

class CreateTeachers < ActiveRecord::Migration[5.0]
	def change
		create_table :teacher do |t|
			t.string :name
			t.string :gender
			t.integer :birthday
			t.string :email
			t.string :phone
			t.string :address

			t.timestamp
		end
	end

end