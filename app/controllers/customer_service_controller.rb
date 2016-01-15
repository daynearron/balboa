class CustomerServiceController < ApplicationController

	before_action :find_customerService, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
	
	def index
		@customerServices = CustomerService.all.order("created_at desc")
	end

	def new
		@customerService = CustomerService.new
	end
		
	def create
		@customerService = CustomerService.new cs_params

		if @customerService.save
			redirect_to customer_service_index_path, notice: "Success."
		else
			render 'new'
		end
	end

	def show
		@customerServices = CustomerService.all.order("created_at desc")
	end

	def edit
	end

	def update
		if @customerService.update(cs_params)
			redirect_to customer_service_index_path, notice: "Success."
		else
			render 'edit'
		end
	end

	def destroy
		@customerService.destroy
		redirect_to customer_service_index_path
	end
	
	private

	def cs_params
		params.require(:customerService).permit(:name, :phone, :site, :logo, :slug)
	end

	def find_customerService
		@customerService = CustomerService.friendly.find(params[:id])
	end

end
