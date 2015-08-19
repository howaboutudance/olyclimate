Rails.application.routes.draw do
	root 'users#new'
	get 'home' => 'signup'
	get 'signup' => 'users#new'
	get 'error' => 'static_pages#error'
	get 'delete' => 'users#delete'

  # resources
	resources :users
end
