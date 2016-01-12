Rails.application.routes.draw do
  namespace :api do
    resources :jobs, only: [:index, :show]
  end

  resources :jobs, only: [:index, :show]

  root 'api/jobs#index'
end
