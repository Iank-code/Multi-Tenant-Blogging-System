Rails.application.routes.draw do
  devise_for :users
  get 'pages/landing'
  devise_for :organisations

  get "up" => "rails/health#show", as: :rails_health_check

  root "pages#landing"

  # constraint subdomain: 'admin' do
  # end
end
