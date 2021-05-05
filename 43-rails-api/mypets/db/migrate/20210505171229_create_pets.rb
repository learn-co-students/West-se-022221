class CreatePets < ActiveRecord::Migration[6.1]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :breed
      t.text :meme_phrase
      t.references :user
      
      t.timestamps
    end
  end
end
