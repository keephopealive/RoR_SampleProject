class BlogsController < ApplicationController
  def index
    @user = session[:user]
    @blogs = Blog.all
  end

  def new
  end

  def create
    blogInstnace = Blog.new
    blogInstnace.title = params[:title]
    blogInstnace.description = params[:description]
    blogInstnace.content = params[:content]
    blogInstnace.user = User.find(session['user']['id'])
    puts "@@@@@@@@@@@@@@@@@@@"
    puts blogInstnace.inspect
    puts "@@@@@@@@@@@@@@@@@@@"
    blogInstnace.save!
    redirect_to blogs_path
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
