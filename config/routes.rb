Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  #get 'welcome/index'

  #resources :users
  resources :cats
#  resources :admins

  namespace :admin do
    get '', to: 'dashboard#index', as: '/'
    resource :dashboard do
      post :edit_multiple
      put :update_multiple
    end
  end

  root 'welcome#index'

  # these routes are for showing users a login form, logging them in, and logging them out.
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  mount Like::Engine => '/'

  resources :users, :path => ''
end
