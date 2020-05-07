Rails.application.routes.draw do
  devise_for :users

  resources :posts
  
  post "/posts/:id/comments", to: "comments#create", as: "comments"

  root to: "home#index"

  get "/about", to: "home#about", as: "about"
  
end
