class RemovCatalogueFromSpreeProducts < ActiveRecord::Migration
  def change
  	remove_column :spree_products, :catalogue
  end
end
