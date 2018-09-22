Rails.application.routes.draw do
  namespace :admin do
      resources :body_templates
      resources :messages
      resources :phones

      root to: "body_templates#index"
    end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
