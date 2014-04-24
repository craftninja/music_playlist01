Rails.application.routes.draw do
  get '/' => 'playlist#index'
  post '/' => 'playlist#create'
  get '/:id' => 'playlist#update'
  post '/:id' => 'playlist#update'
end
