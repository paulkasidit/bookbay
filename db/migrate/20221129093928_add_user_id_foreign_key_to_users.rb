class AddUserIdForeignKeyToUsers < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :reviews, :users
  end
end
