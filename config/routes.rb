Checkpup::Application.routes.draw do

  devise_for :users

  resources :dogs

  match "about" => 'welcome#about', via: :get

  root :to => 'welcome#index'
end