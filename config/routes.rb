Railsroot::Application.routes.draw do
  resources :sayings

  get 'content_pages/home'
  get '/slack_me', :to => 'sayings#slack_me'
  root to: 'sayings#index'
end
