Rails.application.routes.draw do
  devise_for :users
  
  root to: "styles#index"
  resources :suppliers
  resources :styles
end
