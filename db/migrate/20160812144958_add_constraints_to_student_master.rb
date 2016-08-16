class AddConstraintsToStudentMaster < ActiveRecord::Migration[5.0]
  def change
    add_column :student_masters, :dob, :date
    add_column :student_masters, :registration_no, :string
    change_column :student_masters, :name, :string, null: false
    change_column :student_masters, :roll_no, :integer, null: false
    change_column :student_masters, :age, :integer, null: false
    add_index :student_masters, :registration_no, :unique => true
    #change_column :table_name, :column_name, :column_type, null: false
    #change_column_null :table_name, :column_name, false
    #add_index :people, [:firstname, :lastname, :dob], :unique => true
  end
end
