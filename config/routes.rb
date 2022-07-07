Rails.application.routes.draw do
  root 'home#index'

  namespace :master do
    resources :products
    resources :categories
  end
end
