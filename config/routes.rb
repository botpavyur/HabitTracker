Rails.application.routes.draw do
  resources :habits do
    resources :habit_logs, path: 'logs', only: [:index, :new, :create, :destroy]
  end

  root "habits#index"
end
