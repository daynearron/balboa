class AboutController < ApplicationController

	def index
  	@posts = Post.all.order("created_at desc").paginate(page: params[:page], per_page: 2)
  	@insurances = Insurance.all.order("created_at desc").paginate(page: params[:page], per_page: 2)
  end

end
