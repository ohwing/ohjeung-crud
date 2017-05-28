class CommentsController < ApplicationController
    def create
        @commentCreate = Comment.new
        @commentCreate.content = params[:input_comment]
        @commentCreate.post_id = params[:post_id]
        @commentCreate.save
        
        redirect_to "/home/show/#{params[:post_id]}"
    end
    
    def destroy
        @commentCreate = Comment.find(params[:comment_id])
        @commentCreate.destroy
        
        redirect_to "/home/show/#{params[:post_id]}"
    end
end
