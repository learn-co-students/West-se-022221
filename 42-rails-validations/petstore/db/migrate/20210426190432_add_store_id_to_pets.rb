class AddStoreIdToPets < ActiveRecord::Migration[6.1]
  def change
    add_column :pets, :store_id, :integer
  end
end
