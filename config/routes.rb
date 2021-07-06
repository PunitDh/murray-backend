Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'users/sessions', registrations: 'users/registrations' }
  root to: "products#index"

  get "/account", to: "accounts#show"
  resources :products
end