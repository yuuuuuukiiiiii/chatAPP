class TweetsController < ApplicationController

  def index
    # @tweet = Tweet.find(params[:id])
    @tweets = Tweet.all.order("created_at DESC")
    @users = User.all
    # @tweets = Tweet.includes(:user).order("created_at DESC")
  end

  # def show
  #   @tweets = Tweet.all
  # end

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

  def edit
    # @tweet = Tweet.new
    @tweet = Tweet.find(params[:id])
  end

  def update
    @tweet = Tweet.find(params[:id])
    @tweets = Tweet.all.order("created_at DESC")
    if @tweet.update(tweet_params)
    redirect_to tweets_path
    else
    render 'edit'
    end
  end

  def destroy
    tweet = Tweet.find(params[:id])
    if tweet.destroy
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
# tweet.user_id == current_user.id