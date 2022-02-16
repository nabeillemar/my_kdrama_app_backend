Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :k_dramas, only: [:index, :create, :show, :update, :destroy]
      resources :categories, only: [:index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
      end 
    end 
end
