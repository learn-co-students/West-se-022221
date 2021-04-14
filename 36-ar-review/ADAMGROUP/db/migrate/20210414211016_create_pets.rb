class CreatePets < ActiveRecord::Migration[5.2]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :conditions
      t.integer :owner_id
      #t.belongs_to :owner
    end
  end
end
