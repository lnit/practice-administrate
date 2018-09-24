Rails.application.routes.draw do
  namespace :admin do
      resources :messages do
        member do
          post 'smash'
        end
      end
      resources :body_templates
      resources :phones
      resources :delayed_jobs

      root to: "messages#index"
    end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
