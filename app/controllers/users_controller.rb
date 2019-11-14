class UsersController < ApplicationController
    before_action :define_current_user
    
    def create
        puts params
        user = User.new(
            username: params[:username],
            password: params[:password]
        )
        if user && user.valid?
			user.save
			session[:current_user_id] = user.id
			render json: { success: true, id: user.id, username: user.username }
		else
			render json: { success: false, id: nil }    #render error message on frontend 
		end
    end
    
    def index
        render json: User.all, methods: [ :file_url ], methods: [ :file_url ]
    end
    
    def show
        render json: current_user, include: [ :posts ], methods: [ :file_url ]
    end
    
    def update
        current_user.update(
            description: params[:description],
            avatar: params[:avatar]
        )
        render json: current_user, methods: [ :file_url ]
    end
    
    def destroy
        session[:user_id] = nil
        render json: { id: nil }
    end
        
    def define_current_user
        puts "PARAMS ARE: #{params}"
        if params[:id]
            @current_user = User.find(params[:id])
        else
            @current_user = User.new
        end
    end
    
    def current_user
       @current_user
    end
end