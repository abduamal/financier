class AccountsController < ApplicationController
  before_action :find_user
  before_action :find_account, only: [:show, :update, :destroy]

  def index
    @accounts = Account.where(user_id: @user)
    render json: AccountSerializer.new(@accounts)
  end

  def show
    render json: AccountSerializer.new(@account)
  end

  def create
    @account = @user.accounts.new(account_params)
    if @account.save
        render json: AccountSerializer.new(@account)
    else
        render json: { message: 'Error creating account' }, status: :bad_request
    end
  end

  def update
    if @account.update(account_params)
        render json: AccountSerializer.new(@account)
    else
        render json: { message: 'Error updating account' }, status: :bad_request
    end
  end

  def destroy
    if @account.destroy
      render json: AccountSerializer.new(@account)
    else
      render json: {message: 'Oops...something went wrong'}
    end
  end

  private

  def find_user
    @user = User.find(params[:user_id])
  end

  def find_account
    @account = Account.find(params[:id])
  end

  def account_params
    params.require(:account).permit(:name, :balance, :user_id)
  end
end
