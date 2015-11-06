class LoansController < ApplicationController

  # before_action :authorize, except: [:index]

  def index
    @loans = Loan.all
  end

  def new
    @loan = Loan.new

    id = session[:user_id]
    @user = User.find(id)

  end

  # def create
  #   post = Post.create(post_params)
  #   post.user_id = current_user.id
  #   if post.save
  #     redirect_to '/posts'
  #   else
  #     redirect_to '/posts/new'
  #   end
  # end
  #
  # def edit
  #   @post = Post.find(params[:id])
  # end
  #
  # def update
  #   post = Post.find(params[:id])
  #   if post.update(post_params)
  #     redirect_to '/posts'
  #   else
  #     redirect_to '/posts/edit'
  #   end
  # end
  #
  # def destroy
  #   post = Post.find(params[:id])
  #   post.destroy
  #   redirect_to '/posts'
  # end
  #
  # private
  #
  # def post_params
  #   params.require(:post).permit(
  #     :title,
  #     :body
  #   )
  # end
end
