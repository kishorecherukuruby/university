class CreateEmployees < ActiveRecord::Migration[5.0]
  def change
    create_table :employees do |t|
      t.string :name
      t.integer :age
      t.string :email
      t.string :phno

      t.timestamps
    end
  end
end
