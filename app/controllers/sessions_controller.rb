class SessionsController < ApplicationController
  def index
  end

  def new
  end

  def create
    @user = User.find_by_email(params[:email])
    if @user && @user.authenticate(params[:password]) 
      session[:user] = {}
      session[:user][:id] = @user.id
      session[:user][:first_name] = @user.first_name
      session[:user][:last_name] = @user.last_name
      session[:user][:email] = @user.email
      redirect_to blogs_path
    else
      flash[:login_error] = "Invalid Credentials..."
      redirect_to new_session_path
    end
  end

  def edit
  end

  def update
  end

  def show
  end

  def destroy
    reset_session
    redirect_to new_user_path
  end
end
