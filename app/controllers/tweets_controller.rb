class TweetsController < ApplicationController

  def index
    
  end

  def new
  end

  def create
    Tweet.create(text: "")
  end
end
# Tweet.create(image: tweet_params[:image], text: tweet_params[:text], user_id: current_user.id)

# private
# def tweets_params
#   params.permit(text: "")
# end
