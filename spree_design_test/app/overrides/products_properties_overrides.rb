Deface::Override.new(:virtual_path => "spree/products/show",
                     :name => "products_properties",
                     :replace_contents => "[data-hook='product_properties']",
                     :partial => "shared/products_properties",
                     :disabled => false)

Deface::Override.new(:virtual_path => "spree/products/show",
                     :name => "products_title_remove_zfez97",
                     :remove => "h1.product-title",
                     :disabled => false)


Deface::Override.new(:virtual_path => "spree/products/show",
                     :name => "products_title_placement",
                     :insert_top => "[data-hook='product_left_part']",
                     :text => "<h1 class='product-title' itemprop='name'><%= accurate_title %></h1>",
                     :disabled => false)

Deface::Override.new(:virtual_path => "spree/layouts/spree_application",
                     :name => "products_container_width",
                     :replace => "div#content",
                     :partial => "shared/replace_contents",
                     :disabled => false)


Deface::Override.new(:virtual_path => "spree/products/_cart_form",
                     :name => "products_cart_redesign",
		     :replace_contents => ".add-to-cart",
		     :partial => "shared/cart_form_replace",
		     :disabled => false)



Deface::Override.new(:virtual_path => "spree/products/_image",
                     :name => "products_image_size",
                     :replace => "code[erb-silent]:contains('if image')",
                     :partial => "shared/images_products",
                     :closing_selector => "code[erb-silent]:contains('end')",
                     :disabled => true)



