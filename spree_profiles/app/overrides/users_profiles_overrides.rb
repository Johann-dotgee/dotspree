Deface::Override.new(:virtual_path => "spree/users/show",
                     :name => "users_profiles",
                     :replace => "[id='user-info']",
                     :partial => "spree/shared/users_profiles",
                     :disabled => false)
