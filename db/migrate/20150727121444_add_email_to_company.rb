class AddEmailToCompany < ActiveRecord::Migration
  def change
    add_column :companies, :email, :string
    add_column :companies, :mailer, :string
  end
end
