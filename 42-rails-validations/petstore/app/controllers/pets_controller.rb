class PetsController < ApplicationController

  # skip_before_action :verify_authenticity_token
  before_action :find_pet, only: [:show,:edit,:update,:destroy]

  def index
    @pets = Pet.all
    # render :index
  end

  # GET '/pets/new'
  def new
    @pet = Pet.new
  end

  # POST '/pets'
  def create
    @pet = Pet.new(pet_params)
    if @pet.valid?
      @pet.save
      redirect_to pets_path
    else
      flash[:errors] = @pet.errors.full_messages
      redirect_to new_pet_path
    end
  end

  # GET '/pets/10'
  def show
    if @pet
      render :show
    else
      redirect_to pets_path
    end
  end

  def edit
  end

  def update
    @pet.update(pet_params)
    redirect_to pet_path(@pet)
  end

  def destroy
    @pet.destroy
    redirect_to pets_path
  end

  private
  def pet_params
    params.require(:pet).permit(:name,:breed,:store_id)
  end

  def find_pet
    @pet = Pet.find_by(id: params[:id])
  end

end
