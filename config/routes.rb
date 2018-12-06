Rails.application.routes.draw do
  resources :tickets do
    member do
     get 'new_assignment'
     post 'create_assignment'
   end
  end
  devise_for :users
  root 'tickets#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
