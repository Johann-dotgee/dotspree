source 'https://rubygems.org'

gem 'rails', '3.2.8'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'mysql2'


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'


group :development do
  gem 'guard-livereload'
  gem 'yajl-ruby'
#	gem 'livereload'
end

group :production do
  # Use unicorn as the app server
  gem 'unicorn'
end


# Spree
gem 'spree', '1.2.0'
gem 'spree_usa_epay'
gem 'spree_skrill'
gem 'spree_auth_devise', :git => 'git://github.com/spree/spree_auth_devise'
# gem 'spree_social', :git => "https://github.com/Johann-dotgee/spree_social.git"
gem 'spree_social_products', :git => "git://github.com/Johann-dotgee/spree_social_products.git"
# gem 'spree_atos_sips', :git => 'https://github.com/dotgee/spree_atos_sips.git'
# gem 'spree_atos_sips', :path => '../spree_atos_sips'
gem 'spree_profiles', :path => 'spree_profiles'
# gem 'spree_design_test', :path => 'spree_design_test'
gem "spree_product_zoom", :git => "git://github.com/spree/spree_product_zoom.git"
gem 'spree_products_videos', :path => 'spree_products_videos'

# Facebook
gem 'fb_graph'
