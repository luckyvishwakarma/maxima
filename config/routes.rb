Rails.application.routes.draw do 
	devise_for :users, controllers: {sessions: 'users/sessions',registrations: 'users/registrations'}  
  root 'home#dashboard'   
  resources :home do
  	collection do
  		get 'dashboard'
  		get 'contact'
  		get 'gallary'
  	end  	
  end
  resources :users
  resources :emails, only: [:show]
  resources :faqs, only: [:show]
end
