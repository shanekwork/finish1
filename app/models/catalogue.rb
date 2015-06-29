class Catalogue < ActiveRecord::Base
	has_many :spree_products
end
