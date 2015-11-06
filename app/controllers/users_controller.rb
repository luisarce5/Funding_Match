class UsersController < ApplicationController
  def welcome
    @users = User.all
  end

  def index
    # @test = "Hello world"
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    user = User.new(user_params)

    if user.save
      redirect_to('/')
    else
      redirect_to 'users/new'
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(
    :user_name,
    :company_name,
    :town,
    :borrower,
    :password,
    :password_confirmation
    )
  end

end   # end of class
