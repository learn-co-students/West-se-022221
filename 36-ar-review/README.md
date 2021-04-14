# Active-Record-Veterinary-Appointments

Flatiron's veterinary clinic needs help tracking their patients and appointments!

A `Veterinarian` may have many `Appointments` and many `Pets` through `Appointments` 

A `Pet` may have many `Appointments` and many `Veterinarians` through `Appointments` 

A `Owner` may have many `Pets` but a `Pet` belongs to one `Owner`


## Getting started 

run `bundle install`

## Migrations 

Create your migrations. 
- `Veterinarian` should have an name(string), location(string) 
- `Owner` should have a name
- `Pet` should have name(string), conditions(string), belong_to a `Owner` 
- `Appointments` appointment should have cost(float), belong_to a `Veterinarian`(integer) and belong_to a `Pet`(integer)

## Relationship
- What associations will this need?
- (i.e. `has_many`, `has_many through`, and `belongs_to`)

#### Appointment

- `Appointment#veterinarian`
  - should return the `Veterinarian` instance for this appointment
- `Appointment#pet`
  - should return the `Pet` instance for this appointment

#### Veterinarian

- `Veterinarian#pets`
  - returns a collection of all the pets for the veterinarian
- `Veterinarian#appointments`
  - returns a collection of all the appointments for this veterinarian

#### Pet

- `Pet#veterinarian`
  - returns a collection of all the veterinarians for the pet

- `Pet#appointments`
  - returns a collection of all the appointments for this pet

- `Pet#Owner`
    - should return the `Owner` instance for this Pet

#### Owner
- `Owner#pets`
    -  returns a collection of all the pets for this owner

## Aggregate and Association Methods

#### Actor

- `Actor#roles`
  - should return a collection of all the roles that the actor has played
- `Actor#movies`
  - should return a collection of all the movies that the actor has performed in

#### Veterinarian
- `Veterinarian#patients_name` returns an array of pet names from pets that have an appointments with this veterinarian

- `Veterinarian#owner_names` returns an array of owners names from pets that have an appointments with this veterinarian



#### Pet
-  `Pet#make_appointment`(veterinarian,cost) 
    - takes a `Veterinarian` and cost and returns an instance of `Appointment` that joins the `Veterinarian` and the `Pet`

- `Pet#total_owed` returns the total cost of every appointment that belongs to this pet 

- `Pet#pay_all_bills` sets the cost of every appointment belonging to this pet to 0

- `Pet#locations` returns a string of the Veterinarian name followed by their location


#### Appointment

- `Appointment#paid` sets the cost of the appointment to 0

#### Owner 
- `Owner#adopt(petName)`
    - Takes a name and creates an instance of a `Pet` that is joined with this owner, conditions should start as an empty string

