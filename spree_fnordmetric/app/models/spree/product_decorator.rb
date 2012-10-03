module Spree
  Product.class_eval do
    def trigger_show_event
      FNORD_METRIC.event(attributes.merge(_type: :show_product).merge(price: price))
      taxons.each do |taxon|
        FNORD_METRIC.event(attributes.merge(_type: :show_taxon).merge(taxon: taxon.name))
      end
    end
  end
end