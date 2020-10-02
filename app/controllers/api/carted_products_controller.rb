class Api::CartedProductsController < ApplicationController

  before_action :authenticate_user

  def index
    @carted_products = current_user.carted_products.where(status: "carted")
    render "index.json.jb"
  end

  def create
    @carted_product = CartedProduct.new(
      product_id: params[:product_id],
      quantity: params[:quantity],
      user_id: current_user.id,
      status: "carted" 
    )
    if @carted_product.save
      render "show.json.jb"
    else
      render json: { message: "Error!" }
    end
  end

  def detroy
    carted_product = CartedProduct.find(params[:id])
    carted_product.status = "removed"
    carted_product.save
    render json: { status: "Carted product removed" }
  end
  


end
