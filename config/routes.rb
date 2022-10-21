Rails.application.routes.draw do
  namespace :api do
    namespace :v1, defaults: {format: 'json'} do
      resources :greetings, only: [:index]
    end
  end

  get '*page', to: 'root#index', constraints: ->(req) do
    !req.xhr? && req.format.html?
  end
  root 'root#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end