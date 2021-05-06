class PetsController < ApplicationController

  before_action :authorized, only: [:index]

  def index
    @pets = current_user.pets
    render json: PetSerializer.new(@pets).serialized_json
  end


end
