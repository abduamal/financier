AccountTransaction.destroy_all
print "Transactions have been reset." if AccountTransaction.count == 0

Account.destroy_all
print "Accounts have been reset." if Account.count == 0

Account.create!(
  user_id: 2,
  name: "Checking",
  balance: 7000.54
)
Account.create!(
  user_id: 2,
  name: "Savings",
  balance: 35000.00
)
Account.create!(
  user_id: 3,
  name: "Checking",
  balance: 313.37
)
Account.create!(
  user_id: 3,
  name: "Checking",
  balance: 10.00
)
print "#{Account.count} have been created."

AccountTransaction.create!(
  account_id: 1,
  amount: 20.00,
  transaction_type: 'withdraw',
  description: 'Food'
)
AccountTransaction.create!(
  account_id: 1,
  amount: 300.20,
  transaction_type: 'withdraw',
  description: 'Entertainment'
)
AccountTransaction.create!(
  account_id: 2,
  amount: 500.00,
  transaction_type: 'deposit',
  description: 'Saving'
)
AccountTransaction.create!(
  account_id: 1,
  amount: 500.00,
  transaction_type: 'withdraw',
  description: 'Saving'
)
AccountTransaction.create!(
  account_id: 3,
  amount: 15.25,
  transaction_type: 'withdraw',
  description: 'Food'
)
AccountTransaction.create!(
  account_id: 3,
  amount: 429.25,
  transaction_type: 'deposit',
  description: 'Payday'
)
AccountTransaction.create!(
  account_id: 4,
  amount: 3000.00,
  transaction_type: 'deposit',
  description: 'Payday'
)
AccountTransaction.create!(
  account_id: 4,
  amount: 300.00,
  transaction_type: 'withdraw',
  description: 'Saving'
)
print "#{AccountTransaction.count} have been created."
