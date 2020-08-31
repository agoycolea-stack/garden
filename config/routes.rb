Rails.application.routes.draw do
  resources :waterings
  resources :plants

  root 'waterings#index'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
