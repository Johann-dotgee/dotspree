class AddVideosFieldsInSpreeAssets < ActiveRecord::Migration
  def up
    change_table :spree_assets do |t|
      t.string :hebergeur
      t.string :url
      t.string :vignette
    end
  end

  def down
    remove_columd :spree_assets, :hebergeur
    remove_columd :spree_assets, :url
    remove_columd :spree_assets, :vignette
  end
end