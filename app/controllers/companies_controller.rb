class CompaniesController < ApplicationController
	def new
		@company = Company.new
	end

	def index
		@company = Company.where(user_id: 1)
	end

	def create
		@company = Company.new(company_params)
		if @company.save
			redirect_to @company
		else
			render :new
		end
	end

	def edit
		@company = Company.find(params[:id])
	end

	def update
		@company = Company.find(params[:id])
		if @company.update(company_params)
			redirect_to @company
		else
			render :edit
		end
	end

	def show
		@company = Company.find(params[:id])
	end

private

def company_params
      params.require(:company).permit(:name, :address1, :address2, :address3, :town, :postcode, :phone, :county, :facebook, :twitter, :linkedin, :email, :mailer)
end

end