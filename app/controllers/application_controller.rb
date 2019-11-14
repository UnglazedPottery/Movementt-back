class ApplicationController < ActionController::API
    def current_user
        if(session[:user_id])
            User.find(session[:user_id])
        end

    end

    def profile
        if(current_user)
            # byebug
            render json: current_user, include: { posts: { methods: [ :file_url ] } }, methods: [ :file_url ]
        else
            render json: { error: true }
        end
    end
end
