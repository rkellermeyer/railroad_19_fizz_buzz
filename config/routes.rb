Rails.application.routes.draw do
  resources :fizzer do
    member do
      get 'bubbles'
    end
  end
  get 'pages/index'
  root to: 'pages#index'
end
