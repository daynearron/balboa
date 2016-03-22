class ContactsController < ApplicationController

	def new
		@contact = Contact.new
		@insurances = Insurance.all.order('random()').paginate(page: params[:page], per_page: 6)	
	end

	def create
		@contact = Contact.new(params[:contact])
		@contact.request = request
		if @contact.deliver
			flash.now[:error] = nil
		else
			flash.now[:error] = 'Cannot Send Message.'
			render :new
		end
	end
end
