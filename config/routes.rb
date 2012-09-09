Goals::Application.routes.draw do
  root :to => 'first#index'
  devise_for :users
end
