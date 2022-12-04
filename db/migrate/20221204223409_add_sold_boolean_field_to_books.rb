class AddSoldBooleanFieldToBooks < ActiveRecord::Migration[7.0]
  def change
    add_column :books, :sold, :boolean, default: false
  end
end
