class UsersController < ApplicationController

  def new
    @user = User.new
  end
  
  def create
    @user = User.find_by(email: session_params[:email], encrypted_password: session_params[:encrypted_password])
    if @user
      redirect_to :root
    else
      @error_message = "メールアドレスまたはパスワードが間違っています"
      @email = params[:email]
      @encrypted_password = params[:encrypted_password]
      render "devise/sessions/new"
    end
  end

  private
  def session_params
    params.permit(:email, :encrypted_password)
  end

end
  
