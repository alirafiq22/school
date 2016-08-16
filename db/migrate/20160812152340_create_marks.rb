class CreateMarks < ActiveRecord::Migration[5.0]
  def change
    create_table :marks do |t|
      t.integer :roll_no, null: false
      t.integer :std
      t.string :sub_code
      t.integer :sub_marks
      t.timestamps
    end
  end
end
