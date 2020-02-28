class CommentsController < ApplicationController

  def index
    @tweet = Tweet.find(params[:tweet_id])
    @comments = @tweet.comments.includes(:user).order("created_at DESC")
  end

  def create
    @tweet = Tweet.find(params[:tweet_id])
    @comment = Comment.create(text: comment_params[:text], tweet_id: comment_params[:tweet_id], user_id: current_user.id)
    @comments = @tweet.comments.includes(:user).order("created_at DESC")
  end

private
  def comment_params
    params.permit(:text, :tweet_id)
  end
  
end
