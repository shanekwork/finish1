class AddBooleanToSpreeProducts < ActiveRecord::Migration
  def change
  	add_column :spree_products, :special, :boolean, :default => false
  end
end
