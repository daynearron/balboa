class AboutController < ApplicationController

	def index
  	@posts = Post.all.order('random()').paginate(page: params[:page], per_page: 2)
  	@insurances = Insurance.all.order('random()').paginate(page: params[:page], per_page: 2)
  end

end
