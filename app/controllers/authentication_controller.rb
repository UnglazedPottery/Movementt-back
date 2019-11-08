class AuthenticationController < ApplicationController

    def login
        user = User.find_by(username: params[:username])
        if(user && user.authenticate(params[:password]))
            session[:user_id] = user.id
            render json: { success: true, id: user.id, username: user.username }
        else
            render json: { success: false, id: nil }
        end
    end

end