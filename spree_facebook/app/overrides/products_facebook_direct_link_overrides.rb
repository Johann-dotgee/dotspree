Deface::Override.new(
  :virtual_path       => "spree/shared/_products",
  :name               => "products_direct_link",
  :replace            => "code[erb-loud]:contains('link_to small_image')",
  :text               => '<%= link_to small_image(product, :itemprop => "image"), product, :itemprop => "url", "data-real" => "http://#{Spree::Config.site_url}products/#{product.permalink}" %>',
  :disabled           => false
)

Deface::Override.new(
  :virtual_path       => "spree/shared/_products",
  :name               => "products_direct_link_js",
  :insert_after       => "code[erb-silent]:contains('paginated_products.respond_to?(:num_pages)')",
  :partial            => 'shared/direct_link_js',
  :disabled           => false
)
