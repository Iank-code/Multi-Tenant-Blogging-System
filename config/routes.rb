Rails.application.routes.draw do
  devise_for :users
  devise_for :organisations, controllers: {
    sessions: 'organisations/sessions',
    registrations: 'organisations/registrations'
  }
  
  
  get "up" => "rails/health#show", as: :rails_health_check
  
  root "pages#landing"
  
  
  constraints subdomain: /.*/ do
    resources :blogs
  end
end
