Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :caves, only: [:index, :show, :new, :create, :destroy] do
    resources :reservations, only: [:new, :create, :show]
  end

  get 'dashboard', to: 'pages#dashboard', as: :dashboard
  get 'caves/:cave_id/reservations/:id/confirmation', to: 'reservations#confirmation', as: :confirmation
end

