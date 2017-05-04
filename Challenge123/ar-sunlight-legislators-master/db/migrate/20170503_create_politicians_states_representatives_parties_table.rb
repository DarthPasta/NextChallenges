class CreatePoliticiansStatesRepresentativesPartiesTable < ActiveRecord::Migration[5.0]

	def change 
		create_table :politicians do |t|
			t.integer :id => false
			t.string :name 
			t.integer :age
			t.integer :active
			t.datetime :created_at
			t.datetime :updated_at
		end

		create_table :states do |t|
			t.integer :id => false
			t.integer :politician_id
			t.integer :representative_id
			t.string :location
			t.datetime :created_at
			t.datetime :updated_at
		end

		create_table :representatives do |t|
			t.integer :id => false
			t.string :name 
			t.integer :age
			t.integer :active 
			t.datetime :created_at
			t.datetime :updated_at
		end

		create_table :parties do |t|
			t.integer :id => false
			t.string :name
			t.integer :politician_id
			t.integer :representative_id
			t.datetime :created_at
			t.datetime :updated_at
		end
	end
end

