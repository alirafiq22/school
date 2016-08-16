class CreateSubjectMasters < ActiveRecord::Migration[5.0]
  def change
    create_table :subject_masters  do |t|
      t.string :subject_code, :primary_key
      t.string :subject_name
      t.timestamps
    end
  end
end
