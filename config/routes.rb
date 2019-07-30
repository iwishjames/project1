# == Route Map
#
#      Prefix Verb   URI Pattern            Controller#Action
# session_new GET    /session/new(.:format) session#new
#  pages_home GET    /pages/home(.:format)  pages#home
#        root GET    /                      pages#home
#       users GET    /users(.:format)       users#index
#             POST   /users(.:format)       users#create
#    new_user GET    /users/new(.:format)   users#new
#        user PATCH  /users/:id(.:format)   users#update
#             PUT    /users/:id(.:format)   users#update
#   edit_user GET    /users/edit(.:format)  users#edit
#       posts POST   /posts(.:format)       posts#create
#    new_post GET    /posts/new(.:format)   posts#new
#       login GET    /login(.:format)       session#new
#             POST   /login(.:format)       session#create
#             DELETE /login(.:format)       session#destroy

Rails.application.routes.draw do
  get 'session/new'
  get 'pages/home'
  root :to => 'pages#home'
  resources :users, :only => [:new, :create, :update, :index]
  get '/users/edit' => 'users#edit', :as => :edit_user
  resources :posts, :only => [:new, :create]

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
end
