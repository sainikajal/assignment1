Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'api/v1/assessment#index'
   namespace :api do
    namespace :v1 do
      resources :assessment do
      end
   end 
  end   
end
