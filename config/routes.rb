Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check
  resources :tasks do
    member do
      put :toggle_completion
    end
  end
end
