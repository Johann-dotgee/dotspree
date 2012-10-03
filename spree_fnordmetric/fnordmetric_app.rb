require "fnordmetric"

FnordMetric.namespace :store do
  hide_active_users
  
  toplist_gauge :popular_products, title: "Popular Products"
  toplist_gauge :popular_taxons, title: "Popular Taxons"
  toplist_gauge :popular_videos, title: "Popular Videos"
  toplist_gauge :popular_hebergeurs, title: "Popular Hosts"

  distribution_gauge :popular_prices, title: "Popular Prices",
    value_ranges: [10..15, 15..20, 20..50]

  gauge :video_views_per_second, tick: 1.second
  widget "Videos Views",
    title: "Views per Second",
    type: :timeline,
    width: 100,
    gauges: :video_views_per_second,
    include_current: true,
    autoupdate: 1

  gauge :product_views_per_second, tick: 1.second
  widget "Product Views",
    title: "Views per Second",
    type: :timeline,
    width: 100,
    gauges: :product_views_per_second,
    include_current: true,
    autoupdate: 1
  
  event :show_product do
    observe :popular_products, data[:name]
    observe :popular_prices, data[:price]
    incr :product_views_per_second
  end

  event :show_taxon do
    observe :popular_taxons, data[:taxon]
  end

  event :show_video do
    observe :popular_videos, data["#{data[:hebergeur]}_ref".to_sym]
    observe :popular_hebergeurs, data[:hebergeur]
    incr :video_views_per_second
  end
end

FnordMetric::Web.new(port: 4242)
FnordMetric::Worker.new
FnordMetric.run