Deface::Override.new(:virtual_path => "spree/users/edit",
                     :name => "users_profiles_edit",
                     :insert_after => "[data-hook='signup_below_password_fields']",
                     :partial => "shared/users_profiles_edit",
                     :disabled => false)
