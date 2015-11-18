=begin
routes.rb
change to use resource-based routing (RESTful routes)git st
=end
Rails.application.routes.draw do
  get '/' => 'wines#index'
  get '/wines' => 'wines#index'
  get '/wines/:id' => 'wines#show', as: 'wine'
end