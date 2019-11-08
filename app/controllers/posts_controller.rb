class PostsController < ApplicationController
    
    def index
        render json: Post.all, include: { user: { methods: [ :file_url ] } }, methods: [ :file_url ]
        #render json: current_user.contacts, methods: [ :profile_url ]
    end

    def create
        #if(current_user)    
            post = Post.create(
                comment: params[:comment],
                # comment: "no",
                user_id: params[:user_id],
                video: params[:file]
            )
            render json: post, include: [:user], methods: [ :file_url ]
        # else
        #     render json: { error: true, message: 'You must be logged in to write a review.' }
        # end
    end
    
end