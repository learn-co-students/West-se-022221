class PetsController < ApplicationController

  before_action :check_if_logged_in?, only: [:index]

  def index
    @pets = @user.pets
    render json: PetSerializer.new(@pets).serialized_json
  end


end
