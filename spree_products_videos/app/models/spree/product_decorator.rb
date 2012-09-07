module Spree
  Product.class_eval do
    delegate :videos, :to => :master, :prefix => true
    alias_method :videos, :master_videos

    has_many :variant_videos, :source => :videos, :through => :variants_including_master, :order => :position

    def duplicate
      p = self.dup
      p.name = 'COPY OF ' + name
      p.deleted_at = nil
      p.created_at = p.updated_at = nil
      p.taxons = taxons

      p.product_properties = product_properties.map { |q| r = q.dup; r.created_at = r.updated_at = nil; r }

      image_dup = lambda { |i| j = i.dup; j.attachment = i.attachment.clone; j }

      variant = master.dup
      variant.sku = 'COPY OF ' + master.sku
      variant.deleted_at = nil
      variant.images = master.images.map { |i| image_dup.call i }
      variant.videos = master.videos.map { |i| image_dup.call i }
      p.master = variant

      # don't dup the actual variants, just the characterising types
      p.option_types = option_types if has_variants?

      # allow site to do some customization
      p.send(:duplicate_extra, self) if p.respond_to?(:duplicate_extra)
      p.save!
      p
    end
  end
end