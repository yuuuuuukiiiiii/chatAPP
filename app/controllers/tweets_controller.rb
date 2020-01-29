class TweetsController < ApplicationController

  def index
    # @tweet = Tweet.find(params[:id])
    @tweets = Tweet.includes(:user).order("created_at DESC")
  end

  def show
    # @tweet = Tweet.find(params[:id])
  end

  def new
    @tweet = Tweet.new
  end

  def create
    @tweet = Tweet.create(text: tweet_params[:text], user_id: current_user.id)
    if @tweet.save
      redirect_to :root
    else
      render 'new'
    end
  end

private
  def tweet_params
    params.permit(:text)
  end

end
# Tweet.create(image: tweet_params[:image], text: tweet_params[:text], user_id: current_user.id)

# private
#   def tweet_params
#     params.permit(:image, :text)
#   end