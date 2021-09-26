class Account < ApplicationRecord
  belongs_to :user
  has_many :account_transactions
  validates :name, :balance, presence: true

  def update_balance(account_transaction)
    if account_transaction.transaction_type == 'deposit'
      self.balance = self.balance + account_transaction.amount
      self.save
    elsif account_transaction.transaction_type == 'withdraw'
      if self.balance >= account_transaction.amount
        self.balance = self.balance - account_transaction.amount
        self.save
      else
        return 'Balance too low.'
      end
    end
  end

  def update_balance_on_delete(account_transaction)
    if account_transaction.transaction_type == 'deposit'
      if self.balance >= account_transaction.amount
        self.balance = self.balance - account_transaction.amount
        self.save
      else
        return 'Balance too low.'
      end
    elsif account_transaction.transaction_type == 'withdraw'
        self.balance = self.balance + account_transaction.amount
        self.save
    end
  end
end
