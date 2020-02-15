class UsersController < ApplicationController

  def new
    @user = User.find_by(email: params[:email], password: params[:password])
    if @user
      redirect_to :root
    else
      @error_message = "メールアドレスまたはパスワードが間違っています"
      @email = params[:email]
      @password = params[:password]
      
      render "users/sign_in"
  end
end

  end
  
