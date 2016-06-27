class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :insurance_head

  def index
  end

  def show
  end

  def edit
  end

  def update
    if @tree.update(tree_params)
      redirect_to(@tree)
    else
      render('edit')
    end
  end

  private

  	def insurance_head
		@insurance_header = Insurance.all
	end
end


