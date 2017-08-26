Rails.application.routes.draw do
  resources :machines do
    resources :parts
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
