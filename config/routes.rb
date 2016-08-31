Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  #get 'welcome/index'
  #root 'welcome#index'
  root 'cats#index'

  #resources :users
  resources :cats do
    resources :comments
  end

  resources :welcome do
    resources :comments
  end

#  resources :admins

  namespace :admin do
    get '', to: 'dashboard#index', as: '/'
    resource :dashboard do
      post :edit_multiple
      put :update_multiple
    end
  end

  # these routes are for showing users a login form, logging them in, and logging them out.
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/signup' => 'users#new'

  post '/users' => 'users#create'
  post '/:id/edit' => 'users#update'
  #post '/create' => 'users#create'
  post '/signup' => 'users#create'
  mount Like::Engine => '/'

  resources :users, :path => ''


end
