class CreateStudentMasters < ActiveRecord::Migration[5.0]
  def change
    create_table :student_masters do |t|
      t.integer :roll_no
      t.string :name
      t.integer :age
      t.string :gender
      t.string :father_name
      t.string :mother_name
      t.integer :standard
      t.timestamps
    end
  end
end
