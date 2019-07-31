# == Route Map
#
#      Prefix Verb   URI Pattern               Controller#Action
#  posts_edit GET    /posts/edit(.:format)     posts#edit
#  posts_show GET    /posts/show(.:format)     posts#show
# posts_index GET    /posts/index(.:format)    posts#index
# session_new GET    /session/new(.:format)    session#new
#  pages_home GET    /pages/home(.:format)     pages#home
#        root GET    /                         posts#index
#       users GET    /users(.:format)          users#index
#             POST   /users(.:format)          users#create
#    new_user GET    /users/new(.:format)      users#new
#        user PATCH  /users/:id(.:format)      users#update
#             PUT    /users/:id(.:format)      users#update
#   edit_user GET    /users/edit(.:format)     users#edit
#       posts GET    /posts(.:format)          posts#index
#             POST   /posts(.:format)          posts#create
#    new_post GET    /posts/new(.:format)      posts#new
#   edit_post GET    /posts/:id/edit(.:format) posts#edit
#        post GET    /posts/:id(.:format)      posts#show
#             PATCH  /posts/:id(.:format)      posts#update
#             PUT    /posts/:id(.:format)      posts#update
#             DELETE /posts/:id(.:format)      posts#destroy
#       login GET    /login(.:format)          session#new
#             POST   /login(.:format)          session#create
#             DELETE /login(.:format)          session#destroy

Rails.application.routes.draw do
  get 'posts/edit'
  get 'posts/show'
  get 'posts/index'
  get 'session/new'
  get 'pages/home'
  get 'users/show'
  root :to => 'posts#index'
  resources :users, :only => [:new, :create, :update, :index]
  get '/users/edit' => 'users#edit', :as => :edit_user
  resources :posts

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
end
