Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      jsonapi_resources :pages, only: [:index, :create, :show] do
        jsonapi_resources :elements, only: [:index]
      end
    end
  end
end
