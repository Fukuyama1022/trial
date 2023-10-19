class CreateHots < ActiveRecord::Migration[6.1]
  def change
    create_table :hots do |t|
      t.string :question

      t.timestamps
    end
  end
end
