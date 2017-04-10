Rails.application.routes.draw do
  namespace :api do
    resources :users
    resources :doctors
  end

  root to: "application#home"
end
