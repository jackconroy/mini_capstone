Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end

  namespace :api do
    get "/all_products_path" => "products#all_products"
    get "/last_product_path" => "products#last_product"
    get "/hat_path" => "products#hat"
  end

end
