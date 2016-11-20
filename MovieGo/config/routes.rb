MovieGo::Application.routes.draw do
	get 'auth/:provider/callback', to: 'sessions#create'
    get 'auth/failure', to: redirect('/')
    get 'signout', to: 'sessions#destroy', as: 'signout'
 
    resources :sessions, only: [:create, :destroy]
    resource :home, only: [:show]
    root to: "home#landing"
    get 'login' => 'login#login'
	get 'home' => 'home#home'
  	get 'home/landing' => 'home#landing'
	get 'map' => 'map#map'
	post 'map' => 'map#create'
	get 'movies' => 'movies#list'
end