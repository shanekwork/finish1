
# Configure Spree Preferences
#
# Note: Initializing preferences available within the Admin will overwrite any changes that were made through the user interface when you restart.
#       If you would like users to be able to update a setting with the Admin it should NOT be set here.
#
# In order to initialize a setting do:
# config.setting_name = 'new value'
Spree.config do |config|
	
  # Example:
  # Uncomment to override the default site name.
  config.site_name = "Office Site"
  config.logo = "store/logo.png"
  config.admin_interface_logo = "store/logo.png"
  config.track_inventory_levels = false
  allow_backorder_shipping = true
  config.company = true
  config.alternative_billing_phone = false
  config.alternative_shipping_phone = false

end

Spree.user_class = "Spree::User"
require 'spree/product_filters'