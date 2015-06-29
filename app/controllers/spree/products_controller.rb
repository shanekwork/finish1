module Spree
  class ProductsController < Spree::StoreController
    before_filter :load_product, :only => :show
    rescue_from ActiveRecord::RecordNotFound, :with => :render_404
    helper 'spree/taxons'

    respond_to :html

    def index
      @searcher = build_searcher(params)
      @products = @searcher.retrieve_products.ascend_by_master_price
      @taxonomies = Spree::Taxonomy.includes(root: :children)
    end

    def show
      return unless @product
      @imageProds = "http://www.op-insight.co.uk/images/product/large/" + @product.image_name + ".jpg"
      @variants = @product.variants_including_master.active(current_currency).includes([:option_values, :images])
      @product_properties = @product.product_properties.includes(:property)
      @taxon = Spree::Taxon.find(params[:taxon_id]) if params[:taxon_id]
      
    end

      def show_image
        @images = Product.image_name(params[:id])
      end



      

    private



      def accurate_title
        @product ? @product.name : super
      end


      def load_product
        if try_spree_current_user.try(:has_spree_role?, "admin")
          @products = Product.with_deleted
        else
          @products = Product.active(current_currency)
        end
        @product = @products.friendly.find(params[:id])
      end
  end
end
