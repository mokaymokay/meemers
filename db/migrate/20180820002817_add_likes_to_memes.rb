class AddLikesToMemes < ActiveRecord::Migration[5.2]
  def change
    add_column :memes, :likes, :integer
  end
end
