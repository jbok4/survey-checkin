Rails.application.routes.draw do
  namespace :api do
    resources :users
  end

  root to: "application#angular-home"
end
