Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      post "login", to:'sessions#login'
      resources :users
      resources :goals
    end
  end
end
