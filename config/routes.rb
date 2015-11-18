Rails.application.routes.draw do
  get '/' => 'wines#index'
  resources :wines
end