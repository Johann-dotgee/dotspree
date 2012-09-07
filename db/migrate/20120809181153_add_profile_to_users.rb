class AddProfileToUsers < ActiveRecord::Migration
  def up
    add_column :spree_users, :first_name, :string
    add_column :spree_users, :last_name, :string
    add_column :spree_users, :address, :string
    add_column :spree_users, :city, :string
    add_column :spree_users, :country, :string
    add_column :spree_users, :state, :string
    add_column :spree_users, :zip, :integer
    add_column :spree_users, :phone, :string
  end

  def down
    remove_column :spree_users, :first_name, :string
    remove_column :spree_users, :last_name, :string
    remove_column :spree_users, :address, :string
    remove_column :spree_users, :city, :string
    remove_column :spree_users, :country, :string
    remove_column :spree_users, :state, :string
    remove_column :spree_users, :zip, :integer
    remove_column :spree_users, :phone, :string
  end
end
