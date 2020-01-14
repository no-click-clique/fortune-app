Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/random_fortune_url" => "fortunes#random_fortune_method"
    get "/lotto_url" => "fortunes#lotto_method"
    get "/count_url" => "fortunes#count_method"
    get "/sample_html_url" => "fortunes#sample_html_method"
  end
end
