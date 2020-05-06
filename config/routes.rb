Rails.application.routes.draw do
  devise_for :users
  resources :posts
  get "/", to: "posts#index", as: "root"
end
