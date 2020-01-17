class ReviewsController < ApplicationController
  def new
    @product = Product.find(params[:product_id])
    @reviews = @product.reviewss.new
    render :new
  end
end
