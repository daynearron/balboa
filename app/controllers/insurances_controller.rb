class InsurancesController < ApplicationController
	before_action :find_insurance, only: [:show, :edit, :update, :destroy]
	def index
		@insurances = Insurance.all.order("created_at desc")
	end

	def new
		@insurance = Insurance.new
	end
		
	def create
		@insurance = Insurance.new insurance_params

		if @insurance.save
			redirect_to @insurance, notice: "Success."
		else
			render 'new'
		end
	end

	def show
	end

	def edit
	end

	def update
		if @insurance.update(insurance_params)
			redirect_to @insurance, notice: "Success."
		else
			render 'edit'
		end
	end

	def destroy
		@insurance.destroy
		redirect_to insurances_path
	end

	private

	def insurance_params
		params.require(:insurance).permit(:title, :description, :link, :image, :slug)
	end

	def find_insurance
		@insurance = Insurance.friendly.find(params[:id])
	end

end
