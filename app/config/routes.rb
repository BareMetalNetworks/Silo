Rails.application.routes.draw do
  resources :produces
  devise_for :users
  root to: 'home#index'
  get '/users/edit' => "users#edit", :as => :user_root
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
