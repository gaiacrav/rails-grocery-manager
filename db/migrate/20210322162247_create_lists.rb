class CreateLists < ActiveRecord::Migration[6.0]
  def change
    create_table :lists do |t|
      t.string :name
      t.boolean :completed

      t.timestamps
    end
  end
end
