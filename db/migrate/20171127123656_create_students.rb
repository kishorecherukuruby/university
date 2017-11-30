class CreateStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |t|
      t.string :fname
      t.string :lname
      t.string :full_name
      t.date :dob
      t.string :email
      t.string :phno
      t.string :gender

      t.timestamps
    end
  end
end
