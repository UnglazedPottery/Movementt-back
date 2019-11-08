class ApplicationController < ActionController::API
    def current_user
        User.find(session[:user_id])
    end

    def profile
        render json: current_user, include: [ :posts ], methods: [ :file_url ]
    end
end
