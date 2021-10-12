class AccountSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :balance, :user_id, :account_transactions
  has_many :account_transactions
end
