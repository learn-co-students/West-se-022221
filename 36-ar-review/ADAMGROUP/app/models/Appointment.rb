class Appointment < ActiveRecord::Base
    belongs_to :veterinarian
    belongs_to :pet

    # Appointment#paid sets the cost of the appointment to 0
    def paid
        self.update(cost: 0)
        
    end
end