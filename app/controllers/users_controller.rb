class UsersController < ApplicationController
  def index
  end

  def new
  end

  def create
    puts params
    userInstance = User.new
    userInstance.first_name = params[:first_name]
    userInstance.last_name = params[:last_name]
    userInstance.email = params[:email]
    userInstance.birthdate = params[:birthdate]
    userInstance.password = params[:password]
    puts "@@@@@@@@@@@@@@@@@@@@@@@@"
    puts userInstance.inspect
    puts "@@@@@@@@@@@@@@@@@@@@@@@@"
    if userInstance.save
      flash[:registration_message] = "You have successfully registered, please login."
      redirect_to new_session_path
    else 
      flash[:registration_errors] = userInstance.errors.full_messages
      redirect_to new_user_path
    end 
    # render :html => "Users Create" 
  end

  def edit
  end

  def update
  end

  def show
  end

  def destroy
  end
end
