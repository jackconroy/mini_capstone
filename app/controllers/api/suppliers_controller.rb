class Api::SuppliersController < ApplicationController

  def index
    @suppliers = Supplier.all
    render "index.json.jb"
  end

  def show
    @supplier = Supplier.find(params[:id])
    render "show.json.jb"
  end

  def create
    @supplier = Supplier.new(
      name: params[:name],
      email: params[:email],
      phone_number: params[:phone_number]
    )
    @supplier.save
    render "show.json.jb"
  end

  def update
    @supplier.name = params[:name] || @supplier.name
    @supplier.email = params[:email] || @supplier.email
    @supplier.phone_number = params[:phone_number] || @supplier.phone_number
    @supplier.save
    render "show.json.jb"
  end

  def destroy
    @supplier = Supplier.find(params[:id])
    @supplier.destroy
    render json: {message: "You have deleted that supplier."}
  end

end
