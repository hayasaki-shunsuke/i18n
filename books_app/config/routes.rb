Rails.application.routes.draw do
  # config/routes.rb
  scope "(:locale)" do
    resources :books
  end
end
