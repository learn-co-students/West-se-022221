class PetsController < ApplicationController

  # skip_before_action :verify_authenticity_token

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
    @pet = Pet.create(pet_params)
    redirect_to pets_path
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def pet_params
    params.require(:pet).permit(:name,:breed,:store_id)
  end

end
