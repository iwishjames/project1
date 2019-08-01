# == Route Map
#
#    Prefix Verb   URI Pattern               Controller#Action
#      root GET    /                         posts#index
#     users GET    /users(.:format)          users#index
#           POST   /users(.:format)          users#create
#  new_user GET    /users/new(.:format)      users#new
#      user GET    /users/:id(.:format)      users#show
#           PATCH  /users/:id(.:format)      users#update
#           PUT    /users/:id(.:format)      users#update
# edit_user GET    /users/edit(.:format)     users#edit
#     posts GET    /posts(.:format)          posts#index
#           POST   /posts(.:format)          posts#create
#  new_post GET    /posts/new(.:format)      posts#new
# edit_post GET    /posts/:id/edit(.:format) posts#edit
#      post GET    /posts/:id(.:format)      posts#show
#           PATCH  /posts/:id(.:format)      posts#update
#           PUT    /posts/:id(.:format)      posts#update
#           DELETE /posts/:id(.:format)      posts#destroy
#     login GET    /login(.:format)          session#new
#           POST   /login(.:format)          session#create
#           DELETE /login(.:format)          session#destroy

Rails.application.routes.draw do

  root :to => 'posts#index'
  get '/users/edit' => 'users#edit', :as => :edit_user
  resources :users, :except => [:edit]
  resources :posts

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
end
