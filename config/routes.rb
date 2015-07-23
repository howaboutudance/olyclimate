Rails.application.routes.draw do
	root 'static_pages#home'
	get 'home' => 'static_pages/home'
	get 'signup' => 'users#new'

  # resources
	resources :users
end
