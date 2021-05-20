
class ApplicationController < ActionController::API
    before_action :authorized

    def encode_token(payload) # payload = {user_id: 3}
        JWT.encode(payload, ENV['secret'])
    end

    def auth_header
        request.headers['Authorization']
        # "Bearer 2341398470134.3941730.kj3h4k31lhjk4"
    end


    def decoded_token
        if auth_header
            token = auth_header.split(' ')[1]
            begin
                JWT.decode(token, ENV['secret'])
            rescue JWT::DecodeError
                nil
            end
        end
    end

    def current_user
        if decoded_token
            user_id = decoded_token[0]['user_id']
            @user = User.find_by(id: user_id)
        end
    end

    def logged_in?
        !!current_user
    end

    def authorized
        render json: {
            result: "Please log in"
        }, status: :unauthorized unless logged_in?
    end

end
