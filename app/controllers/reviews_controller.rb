class ReviewsController < ApplicationController
  
  def new
    @product = Product.find(params[:product_id])
    @reviews = @product.reviewss.new
    render :new
  end

  def create
    @product = Product.find(params[:product_id])
    @review = @product.reviews.new(review_params)
    if @review.save
      redirect_to product_path(@product)
    else
      render :new
    end
  end

  def show
    @product = Product.find(params[:product_id])
    @review = Song.find(params[:id])
    render :show
  end

  private
  def review_params
    params.require(:review).permit(:author, :content_body, :rating)
  end
end
