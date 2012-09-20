# This migration comes from spree_videos (originally 20110911212813)
class DropVideos < ActiveRecord::Migration
  def up
    drop_table :spree_videos
  end
end