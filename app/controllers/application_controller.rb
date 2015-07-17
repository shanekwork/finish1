class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  def all_taxonomies
  	@taxonomy = Taxonomy.all
  	@user = Spree::User.first
      company = Company.where(user_id: 1)
      @c = @user.company 
  end

end
