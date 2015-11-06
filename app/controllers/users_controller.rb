class UsersController < ApplicationController

  before_action :authorize, except: [:welcome, :new, :create]

  def welcome
    @users = User.all
  end

  def index
    # @test = "Hello world"
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)

    if @user.save
      # redirect_to('/')
      redirect_to @user
    else
      # redirect_to 'users/new'
      render 'new'
    end
  end

  def update
      @user = User.find(params[:id])
      if @user.update(user_params)
        redirect_to @user
      else
        render 'edit'
      end
    end

  def destroy
    @user = User.find(params[:id])
    @user.destroy

    redirect_to users_path
  end

  private

  def user_params
    params.require(:user).permit(
    :user_name,
    :company_name,
    :user_description,
    :town,
    :borrower,
    :password,
    :password_confirmation
    )
  end

end   # end of class
