Rails.application.routes.draw do 
	devise_for :users, controllers: {sessions: 'users/sessions',registrations: 'users/registrations'}  
  root 'home#dashboard'   
  resources :home , only: [:create]do
  	collection do
  		get 'dashboard'
  		get 'contact'
  	end  	
  end
  resources :users do
    member do
      post 'upload_image'
    end
  end
  resources :emails, only: [:show]
  resources :faqs do
    member do
      get 'view_answer'
    end
  end


  resources :picture do
    collection do
      get 'remove_pics'
    end
  end

  resources :gallaries 
  resources :inquiry
end
