Rails.application.routes.draw do
  root 'wines#index'
  resources :wines do
    get 'page/:page', :action => :index, :on => :collection
  end
end