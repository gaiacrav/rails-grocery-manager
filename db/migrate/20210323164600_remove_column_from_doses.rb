class RemoveColumnFromDoses < ActiveRecord::Migration[6.0]
  def change
    remove_column :doses, :list, :integer
  end
end
