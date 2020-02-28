class TweetsController < ApplicationController

  def index
    @tweets = Tweet.all.order("created_at DESC")
  end

  def new
    @tweet = Tweet.new

  end

  def create
    @tweet = Tweet.create(text: tweet_params[:text], user_id: current_user.id)
    if @tweet.save
      redirect_to :root
      flash[:notice] = "投稿が完了しました"
    else
      render 'new'
    end
  end

  def edit
    @tweet = Tweet.find(params[:id])
  end

  def update
    @tweet = Tweet.find(params[:id])
    @tweets = Tweet.all.order("created_at DESC")
    if @tweet.update(tweet_params)
    redirect_to tweets_path
    flash[:notice] = "ツイートを編集しました"
    else
    render 'edit'
    end
  end

  def destroy
    @tweet = Tweet.find(params[:id])
    if @tweet.destroy
      render 'destroy'
      flash[:notice] = "ツイートを削除しました"
    end
  end

private
  def tweet_params
    params.permit(:text)
  end

end