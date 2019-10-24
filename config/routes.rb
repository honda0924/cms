Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'clients#index'
  resources :client_ranks,:client_cats,:closing_days,:payment_days,:payment_methods
  resources :clients do
    resources :actions
  end
end
