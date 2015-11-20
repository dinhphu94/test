class CategoriesController < ApplicationController
  before_action :logged_in_user

  def index
    @categories = Category.paginate(page: params[:page], :per_page => 5)
    respond_to do |format|
      format.html
      format.json{render json: {categories: @categories.as_json}, status: :ok}      
    end
  end

end
