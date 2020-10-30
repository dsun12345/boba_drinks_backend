Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :bobas
      resources :accounts
    end 
  end 

end

