class UsersController < ApplicationController
    skip_before_action :authorized, only: :create

    def create
        user = User.create(user_params)
        if user.valid?
            token = encode_token({ user_id: user.id })
            render json: {jwt: token}, status: :created
        else
            render json: {error: user.errors.full_messages}
        end
    end

    private
    def user_params
        params.require(:user).permit(:username, :password, :bio)
    end
end
