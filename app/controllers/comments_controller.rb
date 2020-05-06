class CommentsController < ApplicationController
    def create
        @post = Post.find(params[:id])
        @comment = @post.comments.create(params[:comment].permit(:comment))
        @comment.user_id = current_user.id if current_user
        @comment.save

        if @comment.save
            redirect_to post_path(@post)
        else
            render 'new'
        end
    end

    # def show
    #     @post = Post.find(params[:id])
    #     @comment = @post.comments.build
    # end

    def new
        @post = Post.find(params[:id])
        @comment = Comment.new
    end

end
