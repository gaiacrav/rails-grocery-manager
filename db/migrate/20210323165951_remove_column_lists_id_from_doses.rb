class RemoveColumnListsIdFromDoses < ActiveRecord::Migration[6.0]
  def change
    remove_column :doses, :lists, :integer
  end
end
