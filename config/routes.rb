Rails.application.routes.draw do
  root 'home#index'
  scope module: :master do
    resources :products
    resources :categories
  end
end
