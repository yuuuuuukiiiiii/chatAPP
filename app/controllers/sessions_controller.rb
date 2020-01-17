class SessionsController < ApplicationController
  def new
    @user = User.find_by(email: params[:session][:email])
    if @user.authenticate(params[:session][:password])
    else
    @user = "エラーです"
  end
end
