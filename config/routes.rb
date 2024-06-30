Rails.application.routes.draw do
  devise_for :users
  devise_for :organisations

  resources :blogs

  get "up" => "rails/health#show", as: :rails_health_check

  root "pages#landing"

  # constraint subdomain: 'admin' do
  # end
end
