class AddCompanyIdToSpreeUsers < ActiveRecord::Migration
  def change
    add_column :spree_users, :company_id, :integer
  end
end
