Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :caves do
    resources :reservations, only: [:new, :create, :show]
  end
  resources :reservations, only: [:destroy, :update]

  get 'dashboard', to: 'pages#dashboard', as: :dashboard
  get 'host_dashboard', to: 'pages#host_dashboard', as: :host_dashboard
  get 'caves/:cave_id/reservations/:id/confirmation', to: 'reservations#confirmation', as: :confirmation
end

