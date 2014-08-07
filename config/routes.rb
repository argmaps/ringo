Rails.application.routes.draw do
  root 'users#new'

  get "/signin" => "sessions#new", :as => :sign_in
  get "/signout" => "sessions#destroy", :as => :sign_out
  get "/signup" => "users#new", :as => :sign_up
  post "/signup" => "users#create"
  get "/dashboard" => "dashboard#show", :as => :dashboard
  get "/settings" => "users#edit", :as => :settings
  get "/install-bookmarklet" => "users#install_bookmarklet", :as => :install_bookmarklet

  resources :users, :except => [:index, :destroy]
  resources :sessions, only: [:new, :create, :destroy]
  resources :password_resets, except: [:destroy]

  resources :selections, except: [:new, :edit, :create, :update] do
    get 'create_via_bookmarklet', :action => :create_via_bookmarklet, :on => :collection
  end

  resources :web_pages
end
