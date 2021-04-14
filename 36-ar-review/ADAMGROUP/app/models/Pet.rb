class Pet < ActiveRecord::Base
    belongs_to :owner
    has_many :appointments
    has_many :veterinarians, through: :appointments

    # Pet#make_appointment(veterinarian,cost)
    # takes a Veterinarian and cost and returns an instance of Appointment 
    # that joins the Veterinarian and the Pet
    def make_appointment(vet, cost)
        Appointment.create(cost: cost, veterinarian_id: vet.id, pet_id: self.id)
    end

    # Pet#total_owed returns the total cost of every appointment that belongs to this pet
    def total_owed
        self.appointments.sum(:cost)
    end

    # Pet#pay_all_bills sets the cost of every appointment belonging to this pet to 0
    def pay_all_bills
        #self.appointments.update_all(cost: 0)
        self.appointments.each {|a| a.paid}
    end

    # Pet#locations returns a string of the Veterinarians name followed by their location
    def locations
        self.veterinarians.pluck(:name, :location).map {|x| x.join(" ")}
    end

end