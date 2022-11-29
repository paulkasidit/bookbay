class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.column(:user_id, :string)
      t.column(:book_id, :integer)
      t.column(:content_body, :text)
      t.column(:rating, :integer)
      
      t.timestamps
    end
  end
end
