Rails.application.routes.draw do
  namespace :api do
    resources :brands do
      resources :shoes
    end
  end
end
