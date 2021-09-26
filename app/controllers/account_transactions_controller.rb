class AccountTransactionsController < ApplicationController
  before_action :find_account
  before_action :find_account_transaction, only: [:show, :destroy]

  def index
    @account_transactions = AccountTransaction.where(account_id: @account)
    render json: @account_transactions
  end

  def show
    render json: @account_transaction
  end

  def create
    @account_transaction = @account.account_transactions.new(account_transaction_params)
    if @account.update_balance(@account_transaction) != 'Balance too low.'
      @account_transaction.save
      render json: @account
    else
      render json: {message: 'Error creating transaction'}, status: :bad_request
    end
  end

  def destroy
    if @account.update_balance_on_delete(@account_transaction)
      @account_transaction.destroy
      render json: @account
    else
      render json: {error: 'Balance too low.'}
    end
  end

  private

  def find_account
    @account = Account.find(params[:account_id])
  end

  def find_account_transaction
    @account_transaction = AccountTransaction.find(params[:id])
  end

  def account_transaction_params
    params.require(:account_transaction).permit(:amount, :transaction_type, :description, :account_id, :created_at, :updated_at)
  end
end
