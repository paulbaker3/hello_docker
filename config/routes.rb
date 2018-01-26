Rails.application.routes.draw do
  namespace :v1 do
    resources :requests, format: :json, only: [:index]
  end
end
