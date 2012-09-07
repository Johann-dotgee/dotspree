class AddVideosForProducts < ActiveRecord::Migration
  def up
    create_table :spree_videos do |t|
      t.string :hebergeur
      t.string :url
      t.string :vignette
      t.integer :product_id
    end
  end

  def down
    drop_table :spree_videos
  end
end