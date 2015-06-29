class ChangeColToString < ActiveRecord::Migration
  def change
  	change_column :spree_products, :traded_pack_bar_code, :string
  end
end
