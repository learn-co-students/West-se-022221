class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.belongs_to :book
      t.belongs_to :customer
      t.timestamps
    end
  end
end
