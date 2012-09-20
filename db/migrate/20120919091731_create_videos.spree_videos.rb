# This migration comes from spree_videos (originally 20110911212813)
class CreateVideos < ActiveRecord::Migration
  def up
    create_table :spree_videos do |t|
      t.string :youtube_ref
      t.integer :product_id
      t.integer :position

      t.timestamps
    end
  end

  def down
    drop_table :spree_videos
  end
end
