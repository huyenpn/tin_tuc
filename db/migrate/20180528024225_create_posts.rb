class CreatePosts < ActiveRecord::Migration[5.2]
  def self.up
    create_table :posts do |t|
      t.string :title
      t.integer :cate_id
      t.string :slug
      t.string :excerpt
      t.text :content
      t.binary :thumb
      t.timestamps
    end
  end
  def self.down
    drop_table :posts
  end
end

