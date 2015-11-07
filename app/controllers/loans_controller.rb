class LoansController < ApplicationController

  # before_action :authorize, except: [:index]

  def index
    @loans = Loan.all
  end

  def show
    @loan = Loan.find(params[:id])
  end

  def new
    @loan = Loan.new
    # id = session[:user_id]
    # @user = User.find(id)
  end

  def create
    loan = Loan.create(loan_params)
    loan.user_id = current_user.id
    if loan.save
      redirect_to '/loans'
    else
      redirect_to '/loans/new'
    end
  end

  def edit
    @loan = Loan.find(params[:id])
  end
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
  def loan_params
    params.require(:loan).permit(
      :title,
      :loan_amount,
      :loan_description,
      :location,
      :category,
      :start_date,
      :term,
      :interest_rate
    )
  end
end # end of class
