class TweetsController < ApplicationController
  def index
    @tweet = Tweet.find(1)
  end

  def new

  end
end
