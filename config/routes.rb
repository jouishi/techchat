Rails.application.routes.draw do
  root 'posts#index'
  get '/posts/new', to: 'posts#new', as: 'new_post'
  get '/answers', to: 'answers#index', as: 'answers'




  resources :posts, only: [:index, :new, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
