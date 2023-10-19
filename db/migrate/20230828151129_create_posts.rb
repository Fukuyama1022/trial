class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :name
      t.text :about
      t.string :image
      t.string :price
      t.integer :user_id

      t.timestamps
    end
  end
end
