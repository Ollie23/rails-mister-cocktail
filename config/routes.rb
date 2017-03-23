Rails.application.routes.draw do
  resources :cocktails
  resources :doses

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
