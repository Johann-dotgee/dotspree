Spree::User.class_eval do
  attr_accessible :first_name, :last_name, :address, :city, :country, :state, :zip, :phone
end
