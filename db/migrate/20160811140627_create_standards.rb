class CreateStandards < ActiveRecord::Migration[5.0]
  def change
    create_table :standards do |t|
      t.integer :std

      t.timestamps
    end
  end
end
