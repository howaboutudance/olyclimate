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
	
	#contact list
	get 'admin/list' => 'google_contacts#list'
	get 'admin' => 'google_contacts#list'


  # resources
	resources :users
end
