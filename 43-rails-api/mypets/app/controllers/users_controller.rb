class UsersController < ApplicationController

  def create
    @user = User.create(user_params)
    render json: UserSerializer.new(@user).serialized_json
  end

  def index
    @users = User.all
    render json: UserSerializer.new(@users).serialized_json
    # render json: @users.to_json(
    #   include: {
    #     pets: {
    #       only: [
    #         :name,
    #         :breed
    #       ]
    #     }
    #   },
    #   except: [
    #     :created_at,
    #     :updated_at,
    #     :password
    #   ]
    # )
  end

  private
  def user_params
    params.require(:user).permit(:username,:password)
  end

end
