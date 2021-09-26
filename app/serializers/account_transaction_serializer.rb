class AccountTransactionSerializer
  include FastJsonapi::ObjectSerializer
  attributes :amount, :transaction_type, :description, :account_id
end
