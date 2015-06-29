class AddCCostCentreDepartmentToSpreeAddresses < ActiveRecord::Migration
  def change
  	add_column :spree_addresses, :department, :string
  	add_column :spree_addresses, :cost_centre, :string
  end
end
