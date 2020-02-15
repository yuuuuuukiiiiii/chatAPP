# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
  def new
    @user = User.new
  end
  
  def create
    @user = User.find_by(email: params[:email], encrypted_password: params[:encrypted_password])
    if @user
      redirect_to :root
    else
      @error_message = "メールアドレスまたはパスワードが間違っています"
      @email = params[:email]
      @encrypted_password = params[:encrypted_password]
      render "devise/sessions/new"
    end
  end
end
#   def new
#     # @user = User.create(email: params[:email], password: params[:password])
#     # @user = User.find_by(email: params[:email], encrypted_password: params[:encrypted_password])
#     @user = User.new
#     if @user
#       redirect_to :root
#     else
#       @error_message = "メールアドレスまたはパスワードが間違っています"
#       @email = params[:email]
#       @encrypted_password = params[:encrypted_password]
      
#       render "devise/sessions/new"
#   end
# end
# end