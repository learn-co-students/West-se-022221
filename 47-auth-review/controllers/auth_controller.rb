class AuthController < ApplicationController
	skip_before_action :authorized, only: :create

	def create
		@user = User.find_by(username: auth_params[:username])

		if @user && @user.authenticate(auth_params[:password])
			
			token = encode_token( {user_id: @user.id} )
			render json: {jwt: token}, status: :ok
		else
			render json: {error: "User not found"}
		end
	end

	private

	def auth_params
		params.require(:auth).permit(:username, :password)
	end

end
