Rails.application.routes.draw do
  devise_for :users

  resources :posts
  
  post "/posts/:id/comments", to: "comments#create", as: "comments"

  get "/", to: "posts#index", as: "root"
end
