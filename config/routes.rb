Rails.application.routes.draw do
  resources :wines do
    resources :log_entries
      get 'page/:page', :action => :index, :on => :collection
    end
  root 'wines#index'
end