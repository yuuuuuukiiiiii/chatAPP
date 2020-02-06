class CommentsController < ApplicationController

  def index
    # @comment = Comment.find(params[:id])
    # @comment = Comment.new
    @tweet = Tweet.find(params[:tweet_id])
    @comments = @tweet.comments.includes(:user).order("created_at DESC")
  end

  def create
    @tweet = Tweet.find(params[:tweet_id])
    @comment = Comment.create(text: comment_params[:text], tweet_id: comment_params[:tweet_id], user_id: current_user.id)
    # redirect_to "/tweets/#{@tweet.id}/comments" 
    @comments = @tweet.comments.includes(:user).order("created_at DESC")
  end

  def _comment
  end

private
  def comment_params
    params.permit(:text, :tweet_id)
  end
  
end
