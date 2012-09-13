# module Spree
# 	module Admin
# 	  class VideosController < ResourceController
# 	  	before_filter :load_data

#       create.before :set_viewable
#       update.before :set_viewable
#       destroy.before :destroy_before

#       def update_positions
#         # params[:positions].each do |id, index|
#         #   Video.where(:id => id).update_all(:position => index)
#         # end

#         # respond_to do |format|
#         #   format.js  { render :text => 'Ok' }
#         # end
#       end


#       private

#         def location_after_save
#           admin_product_videos_url(@product)
#         end

#         def load_data
#           @product = Product.where(:permalink => params[:product_id]).first
#           @variants = @product.variants.collect do |variant|
#             [variant.options_text, variant.id]
#           end
#           @variants.insert(0, [I18n.t(:all), @product.master.id])
#         end

#         def set_viewable
#           @video.viewable_type = 'Spree::Variant'
#           @video.viewable_id = params[:video][:viewable_id]
#         end

#         def destroy_before
#           @viewable = @video.viewable
#         end
# 	  end
# 	end
# end
module Spree  
  module Admin
    ResourceController.class_eval do
      before_filter :load_data
      
      create.before :set_viewable
      update.before :set_viewable
      destroy.before :destroy_before
     
      private

      def load_data
        @product = Product.find_by_permalink(params[:product_id])
        @variants = @product.variants.collect do |variant| 
          [variant.options_text, variant.id ]
        end
        @variants.insert(0, [I18n.t("all"), "All"])
      end

      def set_viewable
        if params[:video].has_key? :viewable_id
          if params[:video][:viewable_id] == "All"
            object.viewable = @product
          else
            object.viewable_type = 'Variant'
            object.viewable_id = params[:video][:viewable_id]
          end
        else
          object.viewable = @product
        end
      end
      
      def destroy_before 
        @viewable = object.viewable
      end
    end
    class VideosController < ResourceController
      before_filter :load_data
      def load_data
        @product = Product.find_by_permalink(params[:product_id])
        @variants = @product.variants.collect do |variant| 
          [variant.options_text, variant.id ]
        end
        @variants.insert(0, [I18n.t("all"), "All"])
      end
      
    end
  end
end