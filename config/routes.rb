Rails.application.routes.draw do
  get 'sessions/new'

	root 'users#new'
	get 'home' => 'signup'
	get 'signup' => 'users#new'
	get 'error' => 'static_pages#error'
	
	#sessions
	get 'login' => 'sessions#new'
	post 'login' => 'sessions#create'
	get 'logout' => 'sessions#destroy'
	
	#oauth2
	get 'auth/:provider/callback', to: 'sessions#create'
	get 'auth/failure' , to: redirect('login')


  # resources
	resources :users
end
