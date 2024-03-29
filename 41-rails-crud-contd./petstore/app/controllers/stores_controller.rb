class StoresController < ApplicationController

  before_action :find_store, only: [:show,:edit,:update,:destroy]

  def index
    @stores = Store.all
  end

  def new
    @store = Store.new
  end

  def create
    @store = Store.create(store_params)
    redirect_to stores_path
  end

  def show
    if @store
      render :show
    else
      redirect_to stores_path
    end
  end

  def edit
  end

  def update
    @store.update(store_params)
    redirect_to store_path(@store)
  end

  def destroy
    @store.destroy
    redirect_to stores_path
  end

  private
  def store_params
    params.require(:store).permit(:name,:location)
  end

  def find_store
    @store = Store.find_by(id: params[:id])
  end


end
