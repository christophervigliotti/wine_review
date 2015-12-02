Rails.application.routes.draw do
  resources :log_entries
  resources :reviews
  root 'wines#index'
  resources :wines do
    get 'page/:page', :action => :index, :on => :collection
  end
end