class AddSaunaToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :sauna, :integer
  end
end
