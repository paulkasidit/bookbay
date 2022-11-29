class AddCartsTable < ActiveRecord::Migration[7.0]
  def change
    create_table :carts do |t|
      t.column(:user_id, :integer)
      t.column(:book_id, :integer)
      t.column(:total_cost, :integer)
      t.timestamps
    end
  end
end
