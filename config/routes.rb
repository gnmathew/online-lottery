Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      namespace :client do
        resources :registrations, only: :create
        resources :sessions, only: :create
      end
    end
  end
end
