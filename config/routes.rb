Rails.application.routes.draw do
  constraints(ClientDomainConstraint.new) do
    namespace :api do
      namespace :v1 do
        namespace :client do
          resources :registrations, only: :create
          resources :sessions, only: :create
        end
      end
    end
  end

  constraints(AdminDomainConstraint.new) do
    namespace :api do
      namespace :v1 do
        namespace :admin do
          resources :sessions, only: :create
        end
      end
    end
  end
end
