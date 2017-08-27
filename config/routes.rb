Rails.application.routes.draw do
  resources :downtimes
  resources :machines do
    resources :parts
    resources :downtimes
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
