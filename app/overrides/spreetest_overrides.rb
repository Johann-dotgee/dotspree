Deface::Override.new(:virtual_path => "spree/layouts/spree_application",
                     :name => "fb_root",
                     :insert_top => "[data-hook='body']",
                     :partial => "shared/atos",
                     :disabled => false)
