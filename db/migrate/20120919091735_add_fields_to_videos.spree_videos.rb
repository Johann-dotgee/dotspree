class AddFieldsToVideos < ActiveRecord::Migration
  def up
    change_table :spree_videos do |t|
      t.string :dailymotion_ref
      t.string :vimeo_ref
      t.string :local_url
    end
  end

  def down
    remove_column :spree_videos, :dailymotion_ref
    remove_column :spree_videos, :vimeo_ref
    remove_column :spree_videos, :local_url
  end
end
