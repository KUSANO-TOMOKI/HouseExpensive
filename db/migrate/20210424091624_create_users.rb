class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name, null: false
			t.string :email, unique: true
			t.string :bday, null: false
			t.integer :role, null: false
      
			t.timestamps
    end
  end
end
