Rails.application.routes.draw do
	root 'users#new'
	get 'home' => 'signup'
	get 'signup' => 'users#new'
	get 'error' => 'static_pages#error'

  # resources
	resources :users
end
