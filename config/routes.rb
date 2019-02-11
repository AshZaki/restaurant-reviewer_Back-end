Rails.application.routes.draw do
	namespace :api do
    	namespace :v1 do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  			resources :users, only: [:create]
  			resources :reviews, :restaurants
  			post '/login', to: 'auth#create'
  			# get  '/users/:id', to: 'users#show'
  		end
  	end
end
