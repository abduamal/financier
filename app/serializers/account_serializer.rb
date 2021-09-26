class AccountSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :balance, :user_id
  has_many :account_transactions
end
