Rails.application.routes.draw do
  get '/' => 'wines#index'
  get '/wines' => 'wines#index'
  get '/wines/:id' => 'wines#show', as: 'wine'
end