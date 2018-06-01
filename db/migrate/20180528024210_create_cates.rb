class CreateCates < ActiveRecord::Migration[5.2]
  def self.up
    create_table :cates do |t|
      t.string :name
      t.string :slug
      t.text :description
      t.timestamps
    end
  end
  def self.down
    drop_table :cates
  end
end
