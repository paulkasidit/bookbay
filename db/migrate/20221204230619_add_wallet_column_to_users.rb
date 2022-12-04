class AddWalletColumnToUsers < ActiveRecord::Migration[7.0]
  def change
      add_column :users, :wallet_balance, :integer, default: 0
  end
end
