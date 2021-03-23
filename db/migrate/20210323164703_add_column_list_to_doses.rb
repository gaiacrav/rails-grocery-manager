class AddColumnListToDoses < ActiveRecord::Migration[6.0]
  def change
    add_reference :doses, :list, foreign_key: true 
  end
end
