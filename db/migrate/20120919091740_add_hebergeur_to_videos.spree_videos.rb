class AddHebergeurToVideos < ActiveRecord::Migration
  def up
    change_table :spree_videos do |t|
      t.string :hebergeur
    end
  end

  def down
    remove_column :spree_videos, :hebergeur
  end
end
