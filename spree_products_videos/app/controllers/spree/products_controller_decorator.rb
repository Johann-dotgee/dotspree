module Spree
  ProductsController.class_eval do
    before_filter :load_videos, :only => [:show]

    def load_videos
      @videos = Video.where(:product_id => @product.id)
    end
  end
end