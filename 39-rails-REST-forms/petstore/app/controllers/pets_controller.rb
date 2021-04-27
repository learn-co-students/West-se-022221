class PetsController < ApplicationController

  def index
    @pets = Pet.all
    render :index
  end

  def new
  end

  def create
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
