Rails.application.routes.draw do

  get '/' => 'users#index'
  post 'handler' => 'users#form_handler'
  get 'result' => 'users#show'
end
