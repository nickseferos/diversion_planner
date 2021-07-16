Rails.application.routes.draw do
  resources :daily_plans do
    resources :diversion_requests
  end
  resources :lines

  root to: 'daily_plans#index'
end
