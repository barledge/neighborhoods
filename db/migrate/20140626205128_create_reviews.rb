class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.text :description, null: false
      t.integer :rating, null: false
      t.integer :user_id
      t.integer :neighborhood_id

      t.timestamps
    end
  end
end
