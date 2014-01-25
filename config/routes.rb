Checkpup::Application.routes.draw do

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" } 

  resources :dogs

  match "about" => 'welcome#about', via: :get

  root :to => 'welcome#index'
end