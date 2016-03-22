class PostsController < ApplicationController
	before_action :find_post, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  def index
  	@posts = Post.all.order("created_at DESC")
    @insurances = Insurance.all.order('random()').paginate(page: params[:page], per_page: 6)
  end

  def new
  	@post = Post.new
  end

  def create
  	@post = Post.new(post_params)
  	if @post.save
			redirect_to @post, notice: "Success"
  	else
  		render 'new', notice: "Failed"
  	end	
  end

  def show 
    @insurances = Insurance.all.order('random()').paginate(page: params[:page], per_page: 6)
  end

  def edit
  end

  def update
	  if @post.update(post_params)
	  	redirect_to @post, notice: "Your article was successfully saved."
	  else
	 		render 'edit'
	 	end
  end

  def destroy
  	@post.destroy
  	redirect_to action: "index"
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, :image, :slug)
  end

  def find_post
  	@post = Post.friendly.find(params[:id])
  end


end
