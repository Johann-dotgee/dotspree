module Spree
	module Admin
	  class VideosController < ResourceController
	  	before_filter :load_data

      create.before :set_viewable
      update.before :set_viewable
      destroy.before :destroy_before

      def update_positions
        # params[:positions].each do |id, index|
        #   Video.where(:id => id).update_all(:position => index)
        # end

        # respond_to do |format|
        #   format.js  { render :text => 'Ok' }
        # end
      end


      private

        def location_after_save
          admin_product_videos_url(@product)
        end

        def load_data
          @product = Product.where(:permalink => params[:product_id]).first
          @variants = @product.variants.collect do |variant|
            [variant.options_text, variant.id]
          end
          @variants.insert(0, [I18n.t(:all), @product.master.id])
        end

        def set_viewable
          @video.viewable_type = 'Spree::Variant'
          @video.viewable_id = params[:video][:viewable_id]
        end

        def destroy_before
          @viewable = @video.viewable
        end
	  end
	end
end