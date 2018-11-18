class CreateUserReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :user_reviews do |t|
      t.integer :user_id
      t.integer :book_id
      t.text :content
      t.integer :rating

      t.timestamps
    end
  end
end
