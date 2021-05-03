class CreateAllergies < ActiveRecord::Migration[6.1]
  def change
    create_table :allergies do |t|
      t.references :user
      t.references :ingredient
      t.timestamps
    end
  end
end
