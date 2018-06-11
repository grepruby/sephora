Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users
    end
  end

  root :to => "application#index"
  match "*path", to: "application#index", format: false, via: :get

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
