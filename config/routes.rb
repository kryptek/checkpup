Checkpup::Application.routes.draw do

  resources :dogs

  match "about" => 'welcome#about', via: :get

  root :to => 'welcome#index'
end