class CommentsController < ApplicationController

    before_action :authenticate_user!, only: [:create, :destroy]


    def index
      @comments = Comment.all
    end

    def create
        @song = Song.find(params[:song_id])
        @comment = @song.comments.build(comment_params)
        @comment.user_id = current_user.id 
        @comment.save
        redirect_to song_path(@song)
      end

      def destroy
        @song = Song.find(params[:song_id])
        @comment = current_user.comments.find(params[:id]) 
        @comment.destroy
        redirect_to song_path(@song)
      end
     
      private
         def comment_params
          params.require(:comment).permit(:commenter, :body)
        end
end
