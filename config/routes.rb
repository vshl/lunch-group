Rails.application.routes.draw do
  resources :groups
  root 'employees#index'
  resources :events
  resources :employees
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
