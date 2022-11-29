class AddForeignKeyUsersAndBooksToCart < ActiveRecord::Migration[7.0]
    def change
      add_foreign_key :carts, :users 
      add_foreign_key :carts, :books
    end
end
