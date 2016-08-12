class AddColumnsToStandard < ActiveRecord::Migration[5.0]
  def change
    add_column :standards, :sect, :string
    add_column :standards, :sub_code, :string
  end
  add_foreign_key :standards, :subject_masters, column: :sub_code, primary_key: "subject_code"
end
