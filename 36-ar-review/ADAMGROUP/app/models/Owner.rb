class Owner < ActiveRecord::Base
    has_many :pets
    has_many :appointments, through: :pets
    has_many :veterinarians, through: :pets

    # Owner#adopt(petName)
    # Takes a name and creates an instance of a Pet that is joined with 
    # this owner, conditions should start as an empty string

    def adopt(petName)
        Pet.create(name: petName, conditions: "", owner_id: self.id)
    end

    def vets
        self.veterinarians.uniq
    end
end