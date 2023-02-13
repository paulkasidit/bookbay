class AddDefaultWalletBalanceToUsers < ActiveRecord::Migration[7.0]
  def change
    change_column :users, :wallet_balance, :integer, :default => 50
  end
end
