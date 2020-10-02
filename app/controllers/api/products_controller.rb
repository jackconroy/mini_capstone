class Api::ProductsController < ApplicationController

  before_action :authenticate_admin, except: [:index, :show]

  def index
    @products = Product.all
    if params[:search]
      @products = @products.where("name iLIKE ?", "%#{params[:search]}%")
    end
    if params[:sort] == "price" && params[:sort_order] == "desc"
      @products = @products.order(price: :desc)
    end
    if params[:price]
      @products = @products.where("price <= ?", "#{params[:price]}")
    end
    
    @products = @products.order(:id)
    render "index.json.jb"
  end

  def show
    @product = Product.find(params[:id])
    render "show.json.jb"
  end

  def create
    @product = Product.new(
      name: params[:name],
      price: params[:price],
      description: params[:description],
      supplier_id: params[:supplier_id],
      inventory: params[:inventory]
    )
    if @product.save
      render "show.json.jb"
    else 
      render json: { error: @product.errors.full_messages }, status: 422
    end
    
  end

  def update
    @product = Product.find(params[:id])
    @product.name = params[:name] || @product.name
    @product.price = params[:price] || @product.price
    @product.description = params[:description] || @product.description
    @product.inventory = params[:inventory] || @product.inventory

    if @product.save
      render "show.json.jb"
    else 
      render json: { error: @product.errors.full_messages }, status: 422
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    render json: {message: "Product has been deleted."}
  end

end