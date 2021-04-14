class Veterinarian < ActiveRecord::Base
    has_many :appointments
    has_many :pets, through: :appointments

    # Veterinarian#patients_name returns an array of pet names from pets that 
    # have an appointments with this veterinarian
    def patients_name
        self.pets.map {|p| p.name}
    end

    # Veterinarian#owner_names returns an array of owners names from pets that 
    # have an appointments with this veterinarian
    def owner_names
        self.pets.map {|p| p.owner}.pluck(:name).uniq
    end
end