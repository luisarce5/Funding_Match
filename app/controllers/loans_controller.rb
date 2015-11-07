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

  def update
    loan = Loan.find(params[:id])
    if loan.update(loan_params)
      redirect_to '/loans'
    else
      redirect_to '/loans/edit'
    end
  end

  def destroy
    loan = Loan.find(params[:id])
    loan.destroy
    redirect_to '/loans'
  end

  private

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
