Rails.application.routes.draw do
  root 'letters#index'

  namespace :api, defaults: { format: 'json' } do
    resources :letters, only: :index
  end


  match '*path', to: 'letters#index', via: :all
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
