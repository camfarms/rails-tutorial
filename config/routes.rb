Rails.application.routes.draw do
	root "home#index", as: "my_home"
	get "log_in" => "sessions#new", as: "log_in"
	get "log_out" => "sessions#destroy", as: "log_out"
	get "home" => "home#index", as: "home"

  	resources :sessions, only: [:create, :new, :destroy] 
  	resources :users, only: [:new, :create]
  	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
