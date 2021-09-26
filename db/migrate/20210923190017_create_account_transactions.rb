class CreateAccountTransactions < ActiveRecord::Migration[6.1]
  def change
    create_table :account_transactions do |t|
      t.decimal :amount, precision: 15, scale: 10
      t.string :transaction_type
      t.text :description
      t.references :account, null: false, foreign_key: true

      t.timestamps
    end
  end
end
