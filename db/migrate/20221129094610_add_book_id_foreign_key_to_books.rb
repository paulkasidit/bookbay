class AddBookIdForeignKeyToBooks < ActiveRecord::Migration[7.0]
  def change
      add_foreign_key :reviews, :books
  end
end
