Rails.application.routes.draw do
  get 'sessions/new'

  get 'users/index'

  get 'users/show'

  get 'users/new'

  get 'users/edit'

  resources :users
  resources :sessions

end

# sessions_new GET    /sessions/new(.:format)      sessions#new
#  users_index GET    /users/index(.:format)       users#index
#   users_show GET    /users/show(.:format)        users#show
#    users_new GET    /users/new(.:format)         users#new
#   users_edit GET    /users/edit(.:format)        users#edit
#        users GET    /users(.:format)             users#index
#              POST   /users(.:format)             users#create
#     new_user GET    /users/new(.:format)         users#new
#    edit_user GET    /users/:id/edit(.:format)    users#edit
#         user GET    /users/:id(.:format)         users#show
#              PATCH  /users/:id(.:format)         users#update
#              PUT    /users/:id(.:format)         users#update
#              DELETE /users/:id(.:format)         users#destroy
#     sessions GET    /sessions(.:format)          sessions#index
#              POST   /sessions(.:format)          sessions#create
#  new_session GET    /sessions/new(.:format)      sessions#new
# edit_session GET    /sessions/:id/edit(.:format) sessions#edit
#      session GET    /sessions/:id(.:format)      sessions#show
#              PATCH  /sessions/:id(.:format)      sessions#update
#              PUT    /sessions/:id(.:format)      sessions#update
#              DELETE /sessions/:id(.:format)      sessions#destroy