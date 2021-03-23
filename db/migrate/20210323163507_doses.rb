class Doses < ActiveRecord::Migration[6.0]
  def change
  create_table :doses do |t|
    t.string :description
    t.references :ingredient, null: false, foreign_key: true
    t.references :lists, null: false, foreign_key: true

    t.timestamps
  end
  end
end
