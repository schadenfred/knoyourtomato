Knowyourcoconut::Application.routes.draw do

  resources :positions
  resources :cohabitants
  resources :farm_certifications
  resources :certifications
  resources :communities do 
    resources :farms
  end
  resources :farms

  authenticated :user do
    root :to => 'home#index'
  end
  
  root :to => "home#index"
  
  devise_for :users

  resources :users do
    resources :farms
  end

end
