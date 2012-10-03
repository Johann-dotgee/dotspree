module Spree
  ProductsController.class_eval do
    before_filter :trigger_show_event, :only => :show

    def trigger_show_event
      @product.trigger_show_event
    end
  end
end