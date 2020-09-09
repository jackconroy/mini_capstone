class Api::ProductsController < ApplicationController

  def all_products
    @all_products = Product.all
    render "all_products.json.jb"
  end

  def last_product
    @last_product = Product.last
    render "last_product.json.jb"
  end

  def hat
    @hat = Product.find_by(id: 1)
    render "hat.json.jb"
  end
end
