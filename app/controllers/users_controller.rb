class UsersController < ApplicationController
  def new
  end

  def index
  end

  def register
    user = User.create(user_params)
    if user.valid?
      session[:user_id] = user[:id]
      redirect_to "/index"
    else
      render json: user.errors
    end
  end

  def login
    ### Both of these find_by lines of code work for logging in ###
    @user = User.find_by(email: params[:email])
    # @user = User.find_by_email(params[:email])
    if @user
      session[:user_id] = @user.id
      redirect_to "/messages"
    else
      render text: "Invalid login"
    end
  end

  def logout
    reset_session
    redirect_to "/"
  end

  def user_params
    params.require(:user).permit(:name,:email,:favorite_nation,:password,:password_confir)
    redirect_to "/get_nation"
  end

end
