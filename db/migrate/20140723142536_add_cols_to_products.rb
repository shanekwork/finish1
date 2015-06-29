class AddColsToProducts < ActiveRecord::Migration
  def change
  	add_column :spree_products, :short_description, :string
  	add_column :spree_products, :brand_name, :string
  	add_column :spree_products, :image_name, :string
  	add_column :spree_products, :pack_size, :integer
  	add_column :spree_products, :kit_flag, :string
  	add_column :spree_products, :superseded_to, :string
  	add_column :spree_products, :alternative_group, :integer
  	add_column :spree_products, :cat_page_no, :integer
  	add_column :spree_products, :mini_cat_page_no, :integer
  	add_column :spree_products, :manufacturer_name, :string
  	add_column :spree_products, :manufacturer_acc_no, :integer
  	add_column :spree_products, :manufacturer_code, :string
  	add_column :spree_products, :traded_pack_bar_code, :integer
  	add_column :spree_products, :spicer_xref, :integer
  	add_column :spree_products, :boss_code, :integer
  	add_column :spree_products, :major_group, :integer
  	add_column :spree_products, :minor_group, :integer
  	add_column :spree_products, :trade_price, :decimal
  	add_column :spree_products, :retail_to_trade, :string
  	add_column :spree_products, :vat_code, :integer
  	add_column :spree_products, :product_matrix, :string
  	add_column :spree_products, :cat_price_discount, :integer
  	add_column :spree_products, :status_code, :string
  	add_column :spree_products, :nett_price_indicator, :integer
  	add_column :spree_products, :product_returnable, :string
  	add_column :spree_products, :customer_logistics_lead_time, :integer
  	add_column :spree_products, :dealer_logistics_lead_time, :integer
  	add_column :spree_products, :delta_status, :string
  	add_column :spree_products, :status_description, :string
  	add_column :spree_products, :nett_cost, :decimal
  	add_column :spree_products, :catalogue, :integer
  end
end
