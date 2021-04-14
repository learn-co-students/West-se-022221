class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.float :cost
      t.belongs_to :veterinarian
      t.belongs_to :pet
    end
  end
end
