class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.column(:title, :string)
      t.column(:author, :string)
      t.column(:genre, :string)
      t.column(:price, :decimal)

      t.timestamps
    end
  end
end
