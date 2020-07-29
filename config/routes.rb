Rails.application.routes.draw do
  root 'employees#index'
  resources :groups
  resources :events
  resources :employees
  post 'create_groups' => 'groups#create_groups', as: :create_groups
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
