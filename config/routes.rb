Rails.application.routes.draw do
  
  devise_for :users
  root to: "machines#index"
  
  resources :machines do
    resources :parts
    resources :downtimes
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
