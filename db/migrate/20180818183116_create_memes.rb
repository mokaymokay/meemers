class CreateMemes < ActiveRecord::Migration[5.2]
  def change
    create_table :memes do |t|
      t.string :title
      t.text :imgur_url
      t.text :image_link

      t.timestamps
    end
  end
end
