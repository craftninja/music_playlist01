Rails.application.routes.draw do
  get '/' => 'playlist#index'
  post '/' => 'playlist#new'
end
