Knowyourcoconut::Application.routes.draw do

  resources :images
  resources :cohabitants
  resources :certifications
  resources :farms

  resources :communities do 
    resources :farms
  end

  authenticated :user do
    root :to => 'home#index'
  end
  
  root :to => "home#index"
  
  devise_for :users 

  devise_scope :user do 
    match '/login', to: 'devise/sessions#new'
    match '/signup', to: 'devise/registrations#new'
    resource :profile, only: [:show, :update]
  end

  resources :users do
    resources :farms
    resources :positions
  end

  resources :farmers, only: [:index, :show]

end
