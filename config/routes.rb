Rails.application.routes.draw do
  get 'lectures/index'
  get 'lectures/new'
  devise_for :users
  resources :users, only: [:show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "posts/top" => "posts#top"
  get "posts/about" =>"posts#about"
  resources :posts do
    resources :likes, only: [:create, :destroy]
  end
  resources :hots
 


  root 'posts#top'
end
