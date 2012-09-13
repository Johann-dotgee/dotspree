Deface::Override.new(
  :virtual_path   => 'spree/admin/shared/_product_tabs',
  :name           => 'add_videos_to_products_in_backend',
  :insert_bottom  => 'ul.product-menu',
  :text           => '<li<%== "class=\"active\"" if current == "Videos" %>><%= link_to t(:videos), admin_product_videos_url(@product) %></li>',
  :disabled       => false
)

Deface::Override.new(
      :virtual_path   => 'spree/layouts/admin',
      :name           => 'spree_product_video_add_js_file',
      :insert_after   => '[data-hook="admin_inside_head"]',
      :text           => "<%= javascript_include_tag 'toolbox.flashembed.min.js' %>",
      :disabled       => false
  )