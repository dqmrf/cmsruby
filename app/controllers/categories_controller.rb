class CategoriesController < ApplicationController
  def show
    @categories = Category.includes(:pages).find params[:id]
  end
end