class AddForeignKeyForBooks < ActiveRecord::Migration[7.0]
  def change
      add_foreign_key :books, :users
  end
end
