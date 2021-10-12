class AccountTransactionSerializer
  include FastJsonapi::ObjectSerializer
  attributes :amount, :transaction_type, :description, :account_id, :account
  belongs_to :account
end
