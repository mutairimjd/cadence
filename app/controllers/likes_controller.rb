class LikesController < ApplicationController
  before_action :authenticate_user!,except: [:index]
  before_action :set_like, only: [:destroy]

  # GET /likes
  # GET /likes.json
  def index
    @likes = Like.all
  end

  # POST /likes
  # POST /likes.json
  def create
    puts "\n\n\n\n****** create" ,like_params
    @like = Like.new(like_params)
    @like.save!
    redirect_to songs_path
  end

  # DELETE /likes/1
  # DELETE /likes/1.json
  def destroy
    @like = current_user.likes.find(params[:id])
    @like.destroy
    redirect_to songs_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_like
      @like = Like.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def like_params
      # params.require(:like).permit(:user_id, :song_id)
      if(current_user) 
      {user_id: current_user.id , song_id: params[:song_id] }
      end
    end
end
