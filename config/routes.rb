Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :caves, only: [:index, :show, :new, :create, :destroy] do
    resources :reservations, only: [:new, :create, :show]

  end
end

